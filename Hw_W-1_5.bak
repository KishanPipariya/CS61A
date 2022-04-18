#lang simply-scheme

(define (ends-e sen)
  (cond((empty? sen) '())
       ((equal? (last (first sen)) 'e) (se (first sen) (ends-e (bf sen))))
       (else (ends-e (bf sen)))))

(ends-e '(please put the salami above the blue elephant))