//练习题1.11

//递归方式
(define (compute01 n)
    (cond 
        ((< n 3) n)
        (else (+ 
                (compute01 (- n 1) )
                (* 2 (compute01 (- n 2) ))
                (* 3 (compute01 (- n 3) ))
              )

        )
    )
)
//迭代版本
原理
(define (f n)
  (define (f-it a b c n)
    (cond ((= n 0) a)
          ((= n 1) b)
          ((= n 2) c)
          (else
           (f-it (* 3 b) (* 2 c) (+ a b c) (- n 1)))))
  (f-it 0 1 2 n))

//迭代
(define (compute02 n))
(
    (compute02-iter 0 0 n)
)
(define (compute02-iter n, v count)
    (cond
        ((= count 0) v)
        (else 

        )
    )
)

