(define (inc a)
  ( + a 1))

(define (double g)
  (lambda (x)
    (g (g x))))
((double inc) 2)