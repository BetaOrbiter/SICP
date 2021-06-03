#lang racket
(#%require "29_mobile_A.scm")

;;B
;;将mobile与structure综合考虑,
;;可以发现它是一种特殊形式的类似于二叉树的递归定义结构
;;moblie(structure)或是叶子或有两个mobile(structure)儿子(在branch中)
;;但这样考虑似乎破坏了抽象性原则
(define (total-weight mobile)
  (if (not (pair? mobile))
      mobile
      (+ (total-weight (branch-structure (left-branch mobile)))
         (total-weight (branch-structure (right-branch mobile))))))
;;B-1
(define (total-weight-1 mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))
(define (branch-weight branch)
  (if (pair? (branch-structure branch))
      (total-weight (branch-structure branch))
      (branch-structure branch)))

(provide (all-defined-out))