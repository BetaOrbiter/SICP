#lang sicp
(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-map items)
  (map items (lambda (x) (* x x))))

(define (map items proc)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map (cdr items) proc))))

(define (square i)
  (* i i))