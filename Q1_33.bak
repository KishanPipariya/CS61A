#lang sicp
(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((= (filter (term a) #t))
         (combiner (term a) (filtered-accumulate filter combiner null-value term (next a) next b)))
        (else (combiner null-value (filtered-accumulate filter combiner null-value term (next a) next b)))))

(define (term1 x) ( * x x))

(define (next1 x) (+ x 1))

(define prime? 0)

(define (q1 a  b) (filtered-accumulate prime? + 0 term1 a next1 b))
