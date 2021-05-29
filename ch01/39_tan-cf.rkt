#lang sicp
(define (cont-frac-iter n d k)
  (define (iter count result)
    (cond ((< count 1) result)
          (else (iter (- count 1)
                      (/ (n count)
                         (+ (d count) result))))))
  (iter k 0))

(define (tan-cf x k)
  (define (N i)
    (if (= i 1)
        x
        (- (* x x))))
  (define (D i)
    (- (* 2 i) 1))
  (exact->inexact (cont-frac-iter N D k)))