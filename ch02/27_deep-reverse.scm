#lang sicp

(define (empty? set)
  (null? set))
(define (leave? set)
  (not (pair? set)))

(define (deep-reverse tree)
  (define (iter result tree)
    (cond ((empty? tree) result)
          ((leave? tree) tree)
          (else (iter (cons
                       (iter nil (car tree)) ;;将第一个元素内部反转后加入结果集,这是与reverse主要的区别
                       result)
                      (cdr tree)))))
  (iter nil tree))

(define x (list (list 1 2) (list 3 4)))
(define m (list (list 1 2) (list 3 4) (list 5 (list 6 7))))

(deep-reverse x)
(deep-reverse m)