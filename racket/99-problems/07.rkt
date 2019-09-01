#lang racket

(define (my-flatten a)
  (cond
    [(empty? a) empty]
    [(list? (first a)) (append (my-flatten (first a)) (my-flatten (rest a)))]
    [else (cons (first a) (my-flatten (rest a)))]))

(equal? (my-flatten '()) (flatten '()))
(equal? (my-flatten '(1 2 3)) (flatten '(1 2 3)))
(equal? (my-flatten '(1 2 (3 4 5))) (flatten '(1 2 (3 4 5))))
(equal? (my-flatten '('(1) 2 (3 4 5))) (flatten '('(1) 2 (3 4 5))))
