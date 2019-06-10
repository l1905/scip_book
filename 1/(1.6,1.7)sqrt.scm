;sqrt相关

;目的： 给定x， 求该值的平方根y。

;步骤1 猜测guess, 校验guess和y的误差
;步骤2 误差满足条件， 返回猜测值guess, 不满足的话， 缩小guess, 执行步骤1， 2

;对外方法
(define (sqrt x)
    (sqrt-iter 1.0 x)
)


;迭代器
(define (sqrt-iter guess x )
    (if (good-enough guess x) 
            guess 
            (sqrt-iter (improve guess x) x)
    )
)

;缩小范围方法
(define (improve guess x)
    (average guess (/ x guess))
)

;求平均值
(define (average x y)
    (/ (+ x y) 2 )
)

;定义误差
(define (good-enough  guess x)
    (< (abs ( - (square guess) x)) 0.001)
)

(sqrt 20)

; scheme <sqrt.scm

;练习题1.6
;考察关键词: 应用序求值： 先求值参数而后应用 (Lisp采用)
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)
    )
)
;测试
(new-if (= 2 3) 0 5)
;测试
(new-if (= 1 1) 0 5)

(define (sqrt-iter1 guess x )
    (new-if (good-enough ? guess x)
            guess
            (sqrt-iter1 (improve guess x) x)
    )
)

(define (sqrt1 x)
    (sqrt-iter1 1.0 x)
)

;(sqrt1 20)
;if(if <predicate> <consequent> <alternative>)语句是条件表达式的受限形式，在执行时，先判断predicate是否为真，然后根据结果只执行其后consequent/alternative中的一个。
;。如果使用本例新定义的new-if则作为普通过程执行，传入的参数会因为解释器使用应用序求值的原因，两个表达式都会被立即求值，反应到本例中就是guess和(sqrt-iter (improve guess x) x)都会被立即求值，后面的那句是属于递归调用，这样也会导致改进的猜测值永远不会被使用，陷入无限层的递归调用中。












