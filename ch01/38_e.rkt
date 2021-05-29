#lang sicp
(define (cont-frac-iter n d k)
  (define (iter count result)
    (cond ((< count 1) result)
          (else (iter (- count 1)
                      (/ (n count)
                         (+ (d count) result))))))
  (iter k 0))

(define (N i)
  1)
(define (D i)
  (if (= (remainder (+ i 1) 3) 0)
      (* 2 (/ (+ i 1) 3))
      1))

(define (circulate times)
  (+ 2.0 (cont-frac-iter N D times)))