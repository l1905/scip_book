; 练习题1.19

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))
    )
)


; 应用序求值： 先求值参数而后应用 (Lisp采用) ===== nnnnnnnn
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 6)
(gcd 6 (remainder 40 6))
(gcd 6 4)
(gcd 4 (remainder 6 4))
(gcd 4 2)
(gcd 2 (remainder 4 2))
(gcd 2 0)
2


; 正则序求值： 完成展开 后规约的形式 ======== nnnnnnnnnnn
(gcd 206 40)
(gcd 40 (remainder 206 40)) ;  t1 = (reminader 206 40)
(gcd 40 t1)
    (if t1 = 0) return a

(gcd t1 (remainder 40 t1)) ;   t2 = (remainder 40 t1)
(gcd t1 t2)

    (if t2 = 0) return t1




