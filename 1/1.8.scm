
;立方根相关

;定义立方根
(define (square03 m)
    (* m m m)
)

//定义误差
(define (good-enough03  guess x)
    (< (abs ( - (square03 guess) x)) 0.001)
)

(define (average03 guess x)
    (/ x (square03 guess) )
)

(define (improve03 guess x)
    (/ (+ (average03 guess x) (* 2 guess)) 3 )
)

(define (sqrt-iter03 guess x )
    (if (good-enough03 guess x) 
            guess 
            (sqrt-iter03 (improve03 guess x) x)
    )
)

(define (sqrt03 x)
    (sqrt-iter03 1.0 x)
)

(define (sqrt-iter03 guess x )
    (if (good-enough03 guess x) 
            guess 
            x
    )
)