#lang racket
(define (make-interval a b) (cons a b))

(define (upper-bound inter) (cdr inter))
(define (lower-bound inter) (car inter))

(define (sub-interval a b)
  (make-interval (- (lower-bound a) (upper-bound b))
                 (- (upper-bound a) (lower-bound b))))

(provide (all-defined-out))