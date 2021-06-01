#lang sicp
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

;;观察上面结果我们可以发现，所谓的一个“数”n，是一个以f，x为参数的二元泛函函数，他返回函数f^n(x)
;;所以我们有理由认为(add a b)也是一个以f，x为参数的二元泛函函数,他返回函数f^(a+b)(x),也就是f^a(f^b(x))
;;仿照add-1的过程，很快就能得出结果
(define (add a b)
  (lambda (f)      ;;第一个参数为f
    (lambda (x)    ;;第二个参数为x
      ((a f)       ;;f^a(?1)
        ((b f) x)))));;?1 = f^b(x)
