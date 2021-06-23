#lang sicp
(#%require "61_adjoin-set.scm")

(define (union-set set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        (else (union-set (cdr set1)
                         (adjoin-set (car set1) set2)))))