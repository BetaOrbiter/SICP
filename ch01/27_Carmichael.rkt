#lang sicp
(define (test n)
  (define (test-iter n count flg)
    (if flg
        (if (= count (- n 1))
            true
            (test-iter n (+ count 1) (fermat-test n (+ count 1))))
        false))
  (test-iter n 1 true))

(define (fermat-test n count)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it count))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (square x)
  (* x x))