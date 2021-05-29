#lang sicp
(define (f-iter n f1 f2 f3)
  (if (= n 0)
      f3
      (f-iter (- n 1)
              (+ f1 (* 2 f2) (* 3 f3))
              f1
              f2)))
(define (f n)
  (f-iter n 2 1 0))