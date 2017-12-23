;; Alyssa P. Hacker doesn't see why `if` needs to be provided as a 
;; special form. ``Why can't I just define it as an ordinary procedure 
;; in terms of cond?'' she asks. Alyssa's friend Eva Lu Ator claims 
;; this can indeed be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


;; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
;; 5

(new-if (= 1 1) 0 5)
;; 0


;; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))


;; What happens when Alyssa attempts to use this to compute square roots? Explain.


;; new-if is a procedure, which is different from the special form `if` in that it has to
;; evaluate all of its arguments before running the `cond` procedure.
;; In this case, the third argument is the `sqrt-iter` function, which calls new-if.
;; The result is an endless loop of sqrt-iter calling new-if and new-if trying to 
;; evaluate sqrt-iter.