#lang simply-scheme

(define (square x)
  (* x x))

(define (every f l)
  (if (empty? l)
      l
      (se (f (first l)) (every f (bf l)))))

(every square '(1 2 3 4))

(every first '(nowhere man))