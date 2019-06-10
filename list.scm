;表操作

;定义: 对n = 0, list-ref应返回表的car
;否则，list-ref返回表的cdr的第(n-1)个项
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

; 定义列表
(define squares (list 1 4 9 16 15))

(list-ref squares 3)

;定义长度
;列表为空，则长度为0
;当前长度 等于cdr长度+ 1
;任意一个表的length就是这个表的cdr的length加1
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
(define odds (list 1 3 5 7))
(length odds)

;迭代方式计算length
(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(length odds)

(append squares odds)



(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append odds squares)


;练习题2.17 请定义出过程last-pair, 它返回只包含给定(非空)表李的最后一个元素的表
;递归格式，todo迭代模式
(define (last-pair list1)
  (if (= 1 (length list1))
      list1
      (last-pair (cdr list1))))

  
           
(last-pair (list 23 72 149 34))
 
;练习题2.18 请定义出过程reverse, 它以一个表为参数，返回的表中所包含的元素参与参与表相同，但是排列顺序与参数表相反
; todo 完成代码
(define (reverse list1)
  (if (null? list1)
      list1
      (append (reverse (cdr list1)) (list (car list1)))))

      
(reverse (list 1 4 9 16 25))
(cons (list 0 25) 16)

;练习题2.20

;递归使用， 验证
(define (g x . y)
  (define (check_type a)
    (remainder a 2)
     
  )
  
  (define (filter-reverse y)
    (if (null? y)
        '()
        (if (= (check_type x) (remainder (car y) 2))
            (cons (car y) (filter-reverse (cdr y)))
            (filter-reverse (cdr y)))))
 
  (filter-reverse y)
  
)
    
(g 5 20 30 31 40)

















 
 
 
 
 
 
 
 