#lang sicp
(define (p x y)
  (if (or (= x y)
          (= x 1))
      1
      (+ (p (- x 1) (- y 1))
         (p x (- y 1)))))