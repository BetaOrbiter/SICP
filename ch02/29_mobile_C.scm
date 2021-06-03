#lang racket
(#%require "29_mobile_A.scm")
(#%require "29_mobile_B.scm")

(define (isBalance mobile)
  (if (pair? mobile)
      (let ((left (left-branch mobile))
            (right (right-branch mobile)))
        (and (same-torque? left right)
             (isBalance (branch-structure left))
             (isBalance (branch-structure right))))
      true))
(define (same-torque? left right)
  (= (* (branch-length left) (total-weight (branch-structure left)))
     (* (branch-length right) (total-weight (branch-structure right)))))


;;test
(define balance-mobile (make-mobile (make-branch 10 10)
                                    (make-branch 10 10)))
(isBalance balance-mobile)
(define unbalance-mobile (make-mobile (make-branch 0 0)
                                            (make-branch 10 10)))
(isBalance unbalance-mobile)