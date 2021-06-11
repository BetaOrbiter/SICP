#lang sicp
(define x (list 1 3 (list 5 7) 9))
(cadr (cadr (cdr x)))

(define y (list (list 7)))
(car (car y))

(define m (list 1 (list 2 (list 3 (list 4 (list 5 (list  6 7)))))))
(cadr (cadr (cadr (cadr (cadr (cadr m))))))
