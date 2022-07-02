#lang simply-scheme

(define (substitute sen w1 w2)
  (cond ((empty? sen) '())
    ((equal? (first sen) w1) (se w2 (substitute (bf sen) w1 w2)))
    (else (se (first sen) (substitute (bf sen) w1 w2)))))

(substitute '(she loves you yeah yeah yeah) 'yeah 'maybe)