#lang sicp
(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
    (define (iter i repeated-f)
        (if (= i 1)
            repeated-f
            (iter (- i 1)
                  (compose f repeated-f))))
    (iter n f))

(define (square x)
  (* x x))