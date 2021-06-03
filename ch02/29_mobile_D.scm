#lang racket

(define (make-mobile left right)
  (cons left right))
(define (make-branch length structure)
  (cons length structure))

;;只用修改A中的函数，BC题可以require本文件进行测试
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cdr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cdr branch))

(provide (all-defined-out))