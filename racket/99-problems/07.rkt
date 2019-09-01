#lang racket

(define (my-flatten a)
  (cond
    [(empty? a) empty]
    [(list? (first a)) (append (my-flatten (first a)) (my-flatten (rest a)))]
    [else (cons (first a) (my-flatten (rest a)))]))

(provide my-flatten)
