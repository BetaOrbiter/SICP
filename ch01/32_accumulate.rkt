#lang sicp
;;递归
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

;;迭代
(define (acc-iter combiner null-value term a next b)
  (define (iter now result)
    (if (> now b)
        result
        (iter (next now)
              (combiner (term now)
                        result))))
  (iter a null-value))