;校验整数 是否是素数
; 如果n不是素数，它必然有一个小于或者等于跟方 的因子

(define (smallest-divisor n)
    (find-divisor n 2)
)

(define (find-divisor n test-divisor)
    (cond
        ((> (square test-divisor) n) n)
        ((divides test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
    )
)

(define (divides a b)
    (= (remainder b a) 0)
)

;检查一个数是否是素数
