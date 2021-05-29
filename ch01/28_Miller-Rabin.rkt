#lang sicp
(define (sum a b f next)
  (if (> a b)
      0
      (+ (f a)
         (sum (next a) b f next))))
(define (cube x)
  (* x x x))
(define (integral a b f dx)
  (define (add-dx x) (+ x dx))
  (* (sum (+ a (/ dx 2.0)) b f add-dx)
     dx))