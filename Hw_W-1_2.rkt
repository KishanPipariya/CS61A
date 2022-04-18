#lang simply-scheme

(define (square x) (* x x))

(define (squares sen)
  (if (empty? sen)
      '()
      (se (square (first sen)) (squares (bf sen)))))

(squares '(2 3 4 5))