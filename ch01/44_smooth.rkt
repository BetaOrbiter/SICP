#lang sicp

(define dx 0.00001)
(define (smooth f)
  (lambda (x) (/ (+ (f x)
                    (f (+ x dx))
                    (f (- x dx)))
                 3)))

(define (n_smooth f n)
  (let ((n-times-smooth (repeated smooth n)))
    (n-times-smooth f)))

(define (repeated f n)
  (define (compose f g)
    (lambda (x) (f (g x))))
  (define (iter i repeated-f)
    (if (= i 1)
        repeated-f
        (iter (- i 1)
              (compose f repeated-f))))
  (iter n f))