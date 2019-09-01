#lang racket

(define (my-reverse a)
  (if (empty? a)
      empty
      (append (my-reverse (rest a)) (cons (first a) empty))))
