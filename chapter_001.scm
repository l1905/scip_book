(define x (cons 1 2))
(define y (cons 3 4))
(define z (cons x y))

(car (car z))

(car (cdr z))


;有理数的表示
(define (add-rat x y)
  (make-rat (+ (* (number x) (denom y))
               (* (number y) (denom x)))
            (* (denom x) (denom y))))

  

(define (make-rat n d) (cons n d))
(define (number x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (number x))
  (display "/")
  (display (denom x)))

(define one-half (make-rat 1 2))

(print-rat one-half)

(define one-third (make-rat 1 3))

(print-rat (add-rat one-half one-third))


(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Argument not 0 or 1 --CONS" m))))
  dispatch)
(define (car z) (z 0))
(define (cdr z) (z 1))

(car (cons 10 2))
(cdr (cons 10 2))













