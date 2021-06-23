#lang sicp
(define (equal? first last)
  (if (and (char? first) (char? last))
      (eq? first last)
      (and (equal? (car first) (car last))
           (equal? (cdr first) (cdr last)))))
(define (char? character)
  (not (pair? character)))

;;test
(equal? '(this is a list) '(this is a list))
(equal? '(thsi is a list) '(this (is a) list))