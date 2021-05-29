#lang sicp
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result
                          (term a)))))
  (iter a 0))
(define (next x)
  (+ x 1))
(define (term x)
  x)