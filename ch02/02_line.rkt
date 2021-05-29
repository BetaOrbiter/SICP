#lang sicp

(define (make-segment p1 p2)
  (cons p1 p2))
(define (start-segment line)
  (car line))
(define (end-segment line)
  (cdr line))

(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define (avg x y)
  (/ (+ x y) 2))
(define (midpoint-segment line)
  (print-point (make-point
                (avg (x-point (start-segment line))
                      (x-point (end-segment line)))
                (avg (y-point (start-segment line))
                     (y-point (end-segment line))))))