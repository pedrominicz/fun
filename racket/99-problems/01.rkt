#lang racket

(define (my-last a)
  (if (<= (length a) 1)
      a
      (my-last (rest a))))

(provide my-last)
