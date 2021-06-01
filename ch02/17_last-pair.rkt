#lang sicp
(define (last-pair lis)
  (cond ((null? lis) (error "empty list"))
        ((null? (cdr lis)) lis)
        (else (last-pair (cdr lis)))))