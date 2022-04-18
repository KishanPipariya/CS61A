#lang simply-scheme

(define (switch sen)
  (if (equal? (first sen) 'You)
      (se 'I (fun (bf sen)))
      (fun sen)))

(define (fun sen)
  (cond ((empty? sen) '())
        ((or (equal? (first sen) 'I) (equal? (first sen) 'me)) (se 'you (fun (bf sen))))
        ((equal? (first sen) 'you) (se 'me (fun (bf sen))))
        (else (se (first sen) (fun (bf sen))))))

(switch '(You told me that I should wake you up))
        