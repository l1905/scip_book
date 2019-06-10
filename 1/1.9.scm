;练习题1.9
(define (dec dec01)
    (- dec01 1)
)

(define (inc inc01)
    (- inc01 -1)
)
;递归
(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))
    )
)

;迭代
(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))
    )
)