;; Implement a cube root procedure analogous to the square root procedure

;; We can reuse most of the code outlined in the square root procedure,
;; with one major difference: the improve procedure

(define (cubert-iter guess x)
  (let ((improved-guess (improve guess x)))
    (if (new-good-enough? guess improved-guess)
      improved-guess
      (cubert-iter improved-guess x))))
  

;; The improve procedure determines a better approximation for the cube root
;; of a given x value according to Newton's method for cube roots

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))


;; We can reuse the `new-good-enough?` procedure from 1_06

(define (new-good-enough? a b)
  (let ((ratio (/ a b)))
      (and (< ratio 1.001) (> ratio 0.999)))) 


(define (square x)
  (* x x))


(define (mycubert x)
  (cubert-iter 1.0 x))


(mycubert 12) ;; 2.28942853862757