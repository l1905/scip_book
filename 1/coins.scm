;换零钱方式

;核心算法：
;换成零钱的全部数目 = 完全不用第一种零钱数目 + 用了第一种硬币的换零钱方式

(define (count-change amount)
    (cc amount 5)
)

(define (cc amount kinds-of-coins)
    (cond 
        ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1)) ; 完全不用最后一种零钱数目
                 (cc (- amount (first-denomination kinds-of-coins)) ; 用了最后一种硬币的还钱方式
                     kinds-of-coins
                 )
               )
        )
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

;验证 256
(count-change 100)

(count-change 45)

(count-change 11)
