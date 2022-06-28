#lang simply-scheme

(define (square x) (* x x))

(define (f a b c)
  (if
    (> a b) (if (> b c) (+ (square a) (square b))
                (+ (square a) (square c)))
    (if (> a c) (+ (square a) (square b))
        (+ (square b) (square c)))))

(f 4 2 3)
