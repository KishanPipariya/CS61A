#lang sicp
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (square x) (* x x))

(define (term1 a) a)

(define (term2 a) (/ (square a) (square (+ a 1))))

(define (next1 a) (+ a 1))

(define (next2 a) (+ a 2))

(define (fact x)
  (product term1 1 next1 x))

(define pi (* 2 (product term2 2 next2 1000) 1000))

pi

