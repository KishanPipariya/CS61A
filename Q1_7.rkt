#lang sicp

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs x)(if (>= x 0) x (- x)))

(define (good-enough? guess prev-guess) (< ( abs (/ (- guess prev-guess) guess)) 0.01))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess prev-guess x) (if (good-enough? guess prev-guess) guess (sqrt-iter (improve guess x) guess x)))

(define (sqrt x) (sqrt-iter 1.0 100.0 x))
(sqrt 100000000000) 