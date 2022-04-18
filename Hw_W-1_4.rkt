#lang simply-scheme

(define (ordered? sen)
  (cond((empty?  (bf sen)) #t)
       ((> (first sen) (first (bf sen))) #f)
       (else (ordered? (bf sen)))))

(ordered? '(4 2 3))

