#lang sicp

(define (square-tree tree)
  (define (square x) (* x x))
  (map square tree))

(define (map proc tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (proc tree))
        (else (cons
               (map proc (car tree))
               (map proc (cdr tree))))))

;;test
(square-tree
   (list 1
         (list 2 (list 3 4) 5)
         (list 6 7)))