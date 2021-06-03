#lang racket

(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))

;;A
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cadr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))

(provide (all-defined-out))