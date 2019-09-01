#lang racket

(define (is-palindrome a)
  (equal? a (reverse a)))

(provide is-palindrome)
