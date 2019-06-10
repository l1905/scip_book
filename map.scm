;对表的映射

(define (scale-list items factor)
  (if (null? items)
      '()
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4 5) 10)

;抽象出具有一般性的思想
(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items))
            (map proc (cdr items)))))

;abs使用
(map abs (list -10 2.5 -11.6 17))

;平方
(map (lambda (x) (* x x))
     (list 1 2 3 4))

;map给scale-list一个新的定义
(define (scale-list items factor)
  (map (lambda (x) (* x factor))
       items))
(scale-list (list 2 3 4) 2)


;练习题2.21 过程square-list以一个数值表为参数， 返回每个数的平方构成的表

(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(square-list (list 1 2 3 4))

;采用map方式
(define (square-list items)
  (map (lambda (x) (* x x))
       items))

(square-list (list 2 4 6 8))


;练习题2.22 重写2.21第一个square-list过程，希望使它能产生一个迭代过程
;打印变量 (display answer) (newline)

(define (square-list items)
  (define (iter things answer)
    (display answer) (newline)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items '()))


(square-list (list 2 4))

;练习2.23 过程for-each 与map类似， 它以一个过程和一个元素表为参数， 但它并不返回结果的表， 只是将这一过程从左到右应用与各个元素， 将过程应用与元素得到的值都丢掉不用， for-each通常用于某些动作的过程， 如打印等， 看下面的例子
;; (define (map proc items)
;;   (if (null? items)
;;       '()
;;       (cons (proc (car items))
;;             (map proc (cdr items)))))

(define (for-each proc items)
  (if (null? items)
      '()
      (begin
       (proc (car items))
      (for-each proc (cdr items)))))


(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))

;练习题2.25

(define x (list 1 2 3))
(define y (list 4 5 6))

(append x y)
(cons x y)
(list x y)
  
;练习题2.27 得到deep-reverse过程, todo 需要重新调整deep-reverse
(define (reverse list1)
  (if (null? list1)
      list1
      (cons (reverse (cdr list1)) (car list1))))
  
(define x (list (list 1 2) (list 3 4)))

(reverse x)

;练习题2.28 写一个过程fringe 它以一个树为参数， 返回一个表， 表中元素是这颗树的所有树叶，
;顺序从左到右的顺序， 例如 
(define x (list (list 1 2) (list 3 4 5)))

;(fringe list)
(define (fringe list1)
  (cond ((null? list1) '())
        ((not (pair? list1)) (list list1))
        (else (append (fringe (car list1))
                    (fringe (cdr list1))))))

(fringe x)







