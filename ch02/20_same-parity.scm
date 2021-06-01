#lang sicp
(define (same-parity x . y)
  (filter (if (even? x)
              even?
              odd?)
          (cons x y)))

(define (same-parity x . y)
  (define (same-iter select y)
    (if (y)))
  (same-iter (if (even? x)
                 even?
                 odd?)
             (cons c y))