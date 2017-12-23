;; Observe that our model of evaluation allows for combinations 
;; whose operators are compound expressions. Use this observation 
;; to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


;; A procedure with the name a-plus-abs-b is defined, taking two parameters a and b.
;; The if statement results in either a + or -, depending on the value of b.
;; If b is greater than 0, a + is returned and a and b are added together.
;; if it is less than 0, a - is returned and b is subtracted from a.

;; Using a positive number for b

(a-plus-abs-b 3 1)

((if (> 1 0) + -) 3 1)
((if #t + -) 3 1)
(+ 3 1) ;; 4


;; Using a negative number for b

(a-plus-abs-b 3 -1)

((if (> -1 0) + -) 3 1)
((if #f + -) 3 1)
(- 3 -1) ;; 4


