; 乘积 a * b

;递归模式
(define (* a b)
    (cond 
        ((= b 1) a)
        ((even b) (* (double a) (halve b)) )
        (else 
            (+ (* (double a) (halve (- b 1))) a)
        )
    )
)
;是否是偶数
(define (even n2)
    (= (remainder n2 2) 0)
)
;整数两倍
(define (double n1)
    (+ n1 n1)
)
;整数除以2
(define (halve n0)
    (/ n0 2)
)

; 乘积 迭代模式 核心思想， 单独放一个字段， 存结果
(define (multi a b)
    (multi-iter 0 a b)
)
(define (multi-iter n a b)
    (cond ((= b 1) (+ n a))
          ((even b) (multi-iter n (double a) (halve b)))
          (else (multi-iter (+ n a) a (- b 1) ))
    )   
)
; 5 * 11
; 5 * (10 + 1)
; 5 * 10 + 5
; 5*2 * 10/2 + 5




