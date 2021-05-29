#lang sicp
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001)) 

(define (improve guess x)
  (average (/ x (square guess)) guess guess))

(define (average x y z)
    (/ 3 (+ x y z)))

(define (square x)
    (* x x))

(define (cube x)
  (* x x x))