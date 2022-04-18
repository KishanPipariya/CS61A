#lang simply-scheme

(define (dupls-removed sen)
  (cond ((empty? sen) '())
        ((member? (first sen) (bf sen)) (dupls-removed (bf sen)))
        (else (se (first sen) (dupls-removed (bf sen))))))
        



(dupls-removed '(a b c a e d e b))
(dupls-removed '(a b c))
(dupls-removed '(a a a a b a a))