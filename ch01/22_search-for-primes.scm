#lang sicp
(#%require "21_smallest-divisor.scm")

(define (test n)
  (let ((start-time (runtime)))
    (define (test-iter n times)
      (cond ((> times 0)
             (count-primes n 3)
             (test-iter n (- times 1)))))
    (test-iter n 1000)
      (- (runtime) start-time)))

(define (count-primes n count)
  (cond ((= count 0) )
        ((prime? n)
;;         (display n)
;;         (newline)
         (count-primes (+ n 1) (- count 1)))
        (else (count-primes (+ n 1) count))))