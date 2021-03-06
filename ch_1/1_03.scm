;; Define a procedure that takes three numbers as arguments and 
;; returns the sum of the squares of the two larger numbers. 

(define (sum-largest-squares x y z)
  (if (= x (largest? x y))
      (+ (square x) (square (largest? y z)))
      (+ (square y) (square (largest? x z)))))

(define (largest? x y)
  (if (> x y) x y))

(define (square x)
  (* x x))
