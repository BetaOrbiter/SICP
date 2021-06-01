#lang sicp
(define (reverse lis)
  (define (iter result lis)
    (if (null? lis)
        result
        (iter (cons (car lis) result);;将未翻转的第一个元素加入结果集头部
              (cdr lis))));;更新待处理集合
  (iter nil lis))