#lang sicp

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs x)(if (>= x 0) x (- x)))

(define (good-enough? guess prev-guess) (< ( abs (/ (- guess prev-guess) guess)) 0.01))

(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess prev-guess x) (if (good-enough? guess prev-guess) guess (cbrt-iter (improve guess x) guess x)))

(define (cbrt x) (cbrt-iter 1.0 100.0 x))
(cbrt 0.001)