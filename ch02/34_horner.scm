#lang sicp
(#%require "sequence-operator.rkt")
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-coeff)
                (+ this-coeff (* x higher-coeff)))
              0
              coefficient-sequence))
;;test
(horner-eval 2 (list 1 3 0 5 0 1))