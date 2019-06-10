;练习题1.11

;递归方式
(define (compute01 n)
    (cond 
        ((< n 3) n)
        (else (+ 
                (compute01 (- n 1) )
                (* 2 (compute01 (- n 2) ))
                (* 3 (compute01 (- n 3) ))
              )

        )
    )
)

;迭代方式
;核心： 三个状态位+ 一个计数位置
(define (compute02 n)
    (compute02-iter 0 1 2 n)
)
(define (compute02-iter a b c n)
    (cond
        ((= n 0) a)
        ((= n 1) b)
        ((= n 2) c)
        (else 
            (compute02-iter b c (+ (* a 3) (* b 2) c) (- n 1))
        )
    )
)


;验证
(compute01 13)
;验证
(compute02 13)