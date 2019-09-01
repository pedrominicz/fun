#lang racket

(define (my-length a)
  (if (empty? a)
      0
      (+ 1 (my-length (rest a)))))

(provide my-length)
