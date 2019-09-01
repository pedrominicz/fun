#lang racket

(define (my-but-last a)
  (if (<= (length a) 2)
      a
      (my-but-last (rest a))))
