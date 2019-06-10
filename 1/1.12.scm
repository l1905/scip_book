;帕斯卡三角形

;递归模式
(define (pascal row col)
    (cond
        ((= col 1) 1)
        ((= col row) 1)
        ((> row 2) (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1))))
        (else 1)

    )
)

;验证结果
(pascal 5 1)
(pascal 5 2)
(pascal 5 3)
(pascal 5 4)
(pascal 5 5)

;迭代模式, 公式
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
(define (pascal02 row col)
    (/ (factorial01 row) (* (factorial01 col) (factorial01 (- row col))))
)

(pascal02 4 2)
