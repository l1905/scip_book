;目的： 给定x， 求该值的平方根y。

;步骤1 猜测guess, 校验guess和y的误差
;步骤2 误差满足条件， 返回猜测值guess, 不满足的话， 缩小guess, 执行步骤1， 2
(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(define (sqrt-iter guess x )
    (if (good-enough guess x) 
            guess 
            (sqrt-iter (improve guess x) x)
    )
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2 )
)

;定义误差
(define (good-enough  guess x)
    (< (abs ( - (square guess) x)) 0.001)
)

(define (compare a b)
    (< a b)
)
;定义平方
(define (square m)
    (* m m)
)

;方案2 猜测值 从下一次迭代到下一次的变化， 当改变值对于猜测值的比率很小时结束
(define (sqrt02 x)
    (sqrt-iter02 1.0 x 100)
)

(define (sqrt-iter02 guess x last_guess)
    (if (good-enough02 guess last_guess) 
            guess 
            (sqrt-iter02 (improve guess x) x guess)
    )
)

(define (good-enough02  guess last_guess)
    (< (/ (abs ( - guess last_guess)) guess) 0.001)
)

;立方根相关

;定义立方根
(define (square03 m)
    (* m m m)
)

;定义误差
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
(square 10)


