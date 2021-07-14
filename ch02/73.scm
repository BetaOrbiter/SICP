#lang sicp
(define (install-sum-package)
  (define (make-sum a1 a2)
    (cond ((=number? a1 0) a2)
          ((=number? a2 0) a1)
          ((and (number? a1) (number? a2)) (+ a1 a2))
          (else (list '+ a1 a2))))
  (define (addend x) (car x))
  (define (augend x) (cdr x))
  (define (deriv exp var)
    (make-sum (deriv (addend exp) var)
              (deriv (augend exp) var)))

  ;;外部过程只需这两个
  (put 'deriv '+ deriv)
  (put 'make-sum '+ make-sum))



(define (install-product-package)
  (define (make-product m1 m2)
    (cond ((or (=number? m1 0) (=number? m2 0)) 0)
          ((=number? m1 1) m2)
          ((=number? m2 1) m1)
          ((and (number? m1) (number? m2)) (* m1 m2))
          (else (list '* m1 m2))))
  (define (multiplier x) (car x))
  (define (multiplicand x) (cadr x))
  (define (deriv exp var)
    (let ((u (multiplier exp))
          (v (multiplicand exp)))
      (make-sum (make-product (deriv u var)
                              v)
                (make-product u
                              (deriv v var)))))

  (put 'deriv '* deriv)
  (put 'make-product '* make-product))


(define (install-exponentiation-package)
  (define (base x) (car x))
  (define (exponent x) (cadr x))
  (define (make-exponentiation base exponent)
  (cond ((= exponent 0)
         1)
        ((= exponent 1)
         base)
        (else (list '^ base exponent))))
  (define (deriv exp var)
    (let ((u (base exp))
          (n (exponent exp)))
      (make-product
       n
       (make-product
        (make-exponentiation u (- n 1))
        (deriv u var)))))

  (put 'deriv '^ deriv)
  (put 'make-exponentiation '^ make-exponentiation))