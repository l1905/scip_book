;序列定义

;filter定义
(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(filter odd? (list 1 2 3 4 5))

;累加工作定义
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(accumulate + 0 (list 1 2 3 4 5))

(accumulate * 1 (list 1 2 3 4 5))

(accumulate cons '() (list 1 2 3 4 5))

;枚举
(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))
(enumerate-interval 2 7)

;将程序表示为一些针对序列的操作， 这样做的价值就在于能帮助我们得到模块化的程序设计，
;也就是说， 得到由一些比较独立的片段组合构成的设计， 通过提供一个标准部件库, 并使这些部件都有一些能以各种灵活方式相互连接的约定界面， 将能进一步推动人们去做模块化的设计

;在工程设计中, 模块化结构是控制复杂性的一种威力强大的策略。

;练习2.33 请填充下面缺失的表达式， 完成一些基本的表操作看作累积的定义:
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y) '() sequence))

(define (map p sequence)
    (if (null? sequence)
        '()
        (cons (p (car sequence))
              (map p (cdr sequence)))))

(define (accumulate op '() sequence)
  (if (null? sequence)
      '()
      (op (car sequence)
          (accumulate op '() (cdr sequence)))))

; x = (car sequence)
; y = (accumulate op '() (cdr sequence))
; (lambda (x y) <??>) 
  
;数组长度  
;; (define (length items)
;;   (if (null? items)
;;       0
;;       (+ 1 (length (cdr items)))))
  
(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence)))

(length (list 1 2 3 4 2 2 2))
  








