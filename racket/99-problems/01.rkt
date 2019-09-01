#lang racket

(define (my-last a)
  (if (<= (length a) 1)
      a
      (my-last (rest a))))

(equal? (my-last '()) '())
(equal? (my-last '(1 2 3)) '(3))
(equal? (my-last '(1 2 (3 4 5))) '((3 4 5)))
