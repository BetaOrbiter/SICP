#lang sicp

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
        ((fast-prime? n 1)
;;         (display n)
;;         (newline)
         (count-primes (+ n 1) (- count 1)))
        (else (count-primes (+ n 1) count))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (square x)
  (* x x))