#lang sicp

(define tolerance 0.00001)
(define (fixed-point f guess)
  (define (good-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (let ((next (f guess)))
    (if (good-enough? guess next)
        next
        (fixed-point f next))))