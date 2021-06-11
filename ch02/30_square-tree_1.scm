#lang sicp

(define (square-tree items)
  (cond ((null? items) nil)
        ((not(pair? items)) (square items))
        (else (cons (square-tree (car items)) (square-tree (cdr items))))))
(define (square x)
  (* x x))

;;test
(square-tree
   (list 1
         (list 2 (list 3 4) 5)
         (list 6 7)))