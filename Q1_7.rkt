#lang sicp

(define (abs x)
  (if (< x 0) (- x) x))

(define (good-enough? guess x)
  (if (< (abs (- (* guess guess guess) x)) 0.01) #t #f))

(define (improve-guess guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cb-iter guess x)
  (if (good-enough? guess x) (guess)
      (cb-iter (improve-guess guess x) x)))

(cb-iter 1 27)
