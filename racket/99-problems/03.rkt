#lang racket

(define (element-at a n)
  (cond
    [(= n 1) (first a)]
    [else (element-at (rest a) (- n 1))]))

(provide element-at)
