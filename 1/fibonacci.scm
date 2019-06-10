;斐波那契树

;递归实现
(define (fib01 n)
    (cond 
        ((= n 0) 0)
        ((= n 1) 1)
        (else 
            (+ (fib01 (- n 1))
               (fib01 (- n 2))
            )
        )
    )
)

;迭代实现
(define (fib02 n)
    (fib-iter 1 0 n)
)

;迭代
(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))
    )
)

;验证结果
;递归实现
(fib01 10)

;迭代实现
(fib02 10)

