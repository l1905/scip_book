;阶乘：递归
(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))
    )
)

//迭代数据结构
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

//练习题1.9
(define (dec dec01)
    (- dec01 1)
)

(define (inc inc01)
    (- inc01 -1)
)
//递归
(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))
    )
)

//迭代
(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))
    )
)

//练习题1.10
(define (A x y)
    (cond 
        ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (
            A (- x 1) (A x (- y 1))
        ))
    )
)

(define (f n) (A 0 n)) 以

(define (g n) (A 1 n)) 以2为底的指数

(define (h n) (A 2 n))

(define (k n) (A 5 n))


斐波那契树
//属性递归 
(define (fib n)
    (cond 
        ((= n 0) 0)
        ((= n 1) 1)
        (else 
            (+ (fib (- n 1))
               (fib (- n 2))
            )
        )
    )
)

//斐波那契数递归
(define (fib n)
    (fib-iter 1 0 n)
)
//迭代
(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))
    )
)

//换零钱方式的统计 
// 核心算法：
换成零钱的全部数目 = 完全不用第一种零钱数目 + 用了第一种硬币的换零钱方式
(define (count-change amount)
    (cc amount 5)
)

(define (cc amount kinds-of-coins)
    (cond 
        ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins))
                     kinds-of-coins
                 )
        )))
    )
)

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)
    )
)



