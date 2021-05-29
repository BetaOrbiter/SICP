#lang sicp

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< n 0)
        (cons (
               ( - (/ n g))
               ( - (/ d g))))
        (cons ( (/ n g)
                (/ d g))))))