#lang sicp
;;递归
(define (product a b next f)
  (if (> a b)
      1
      (* (f a)
         (product (next a)
                  b
                  next
                  f))))

;;迭代
(define (pro-iter a b next f)
  (define (iter a b result)
    (if (> a b)
        result
        (iter (next a)
              b
              (* result (f a)))))
  (iter a b 1))

(define (factorial n)
  (pro 1
       n
       (lambda (x) (+ x 1))
       (lambda (x) x)))