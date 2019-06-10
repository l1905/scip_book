;阶乘：递归
(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))
    )
)

;迭代数据结构
(define (factorial01 n)
    (fact-iter 1 1 n)
)

(define (fact-iter product counter max-counter)
    (if (> counter max-counter)
        product
        (fact-iter (* counter product)
            (+ counter 1)
            max-counter
        )
    )
)

;验证 递归
(factorial 5)

; 迭代
(factorial01 5)
