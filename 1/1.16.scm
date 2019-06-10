;1.16练习题, 核心思想是去指数， 将参数增加

(define (fast-expt b n)
    (expt-iter 1 b n)
)

(define (expt-iter a b n)
    (cond 
        ((= n 0) a)
        ((even n) (expt-iter a (* b b) (/ n 2)) )
        (else (expt-iter (* a b) b (- n 1)))
    )
)

(define (even n)
    (= (remainder n 2) 0)
)