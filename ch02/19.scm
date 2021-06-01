#lang sicp
(#%require "18_reverse.rkt")
(define (first-denomination money-list)
  (car money-list))
(define (except-first-denomination money-list)
  (cdr money-list))
(define (no-more? money-list)
  (null? money-list))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc (- amount
                   (first-denomination coin-values))
                coin-values)
            (cc amount
                (except-first-denomination coin-values))))))