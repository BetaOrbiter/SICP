#lang sicp
(define (empty? tree)
  (null? tree))
(define (leave? tree)
  (not (pair? tree)))

(define (fringe tree)
  (cond ((empty? tree) nil)
        ((leave? tree) (list tree))
        (else (append (fringe (car tree))
                    (fringe (cdr tree))))))


;;test
(define x (list (list 1 2) (list 3 4)))
(define m (list (list 1 2) (list 3 4) (list 5 (list 6 7))))
(fringe x)
(fringe m)