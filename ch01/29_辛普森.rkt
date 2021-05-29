#lang sicp
(define (Simpsons a b f n)
  (define (next x) (+ x (/ (- b a) n)))
  (* (/ (- b a) n 3)
     (sum a f next n)))

(define (sum a f next n)
  (define (sum-iter a now)
    (cond ((= now n) (f a))
          ((= now 0) (+ (f a)
                        (sum-iter (next a) (+ 1 now))))
          ((even? now) (+ (* 2 (f a))
                          (sum-iter (next a) (+ 1 now))))
          (else (+ (* 4 (f a))
                   (sum-iter (next a) (+ 1 now))))))
  (sum-iter a 0))

(define (cube x)
  (* x x x))

(define (even? n)
 (= (remainder n 2) 0))