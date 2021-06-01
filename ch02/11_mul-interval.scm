#lang sicp

(#%require "07_08_interval.scm")

(define (mul-interval x y)
  (let ((p1 (lower-bound x))
        (p2 (upper-bound x))
        (p3 (lower-bound y))
        (p4 (upper-bound y)))
    (cond ((and (> p1 0) (> p3 0))
           (make-interval (* p1 p3) (* p2 p4)))

          ((and (> p1 0) (< p3 0) (> p4 0))
           (make-interval (* p2 p3) (* p2 p4)))

          ((and (> p1 0) (< p4 0))
           (make-interval (* p2 p3) (* p1 p4)))

          ((and (< p1 0) (> p2 0) (> p3 0))
           (make-interval (* p1 p4) (* p2 p4)))

          ((and (< p1 0) (> p2 0) (< p3 0) (> p4 0))
           (make-interval 0 (max (* p1 p3) (* p2 p4))))

          ((and (< p1 0) (> p2 0) (< p4 0))
           (make-interval (* p2 p3) (* p1 p4)))

          ((and (< p2 0) (> p3 0))
           (make-interval (* p1 p4) (* p2 p3)))

          ((and (< p2 0) (< p3 0) (> p4 0))
           (make-interval (* p1 p4) (* p2 p3))

          ((and (< p2 0) (< p4 0))
           (make-interval (* p1 p3) (* p2 p4)))))))