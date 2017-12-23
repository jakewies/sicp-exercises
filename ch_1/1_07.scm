(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; The problem with the `good-enough?` procedure defined above when attempting 
;; to evaluate the square root of a small number is due to the fixed
;; 0.001 value used to compare the current expected square root. In terms of small numbers,
;; 0.001 is pretty big, and numbers that come close enough to 0.001 to satisfy 
;; `good-enough?` are actually quite inaccurate.

;; For large numbers, the `improve` procedure has difficult quantifying a different number, 
;; and will end up returning the same value over and over again due to imprecision. The
;; result would be an endless loop where `good-enough?` is "never good enough"


;; Alternative Strategy for `good-enough?`

(define (new-good-enough? a b)
  (let ((ratio (/ a b)))
      (and (< ratio 1.001) (> ratio 0.999)))) 

;; Stole this from Eli Benderskey @
;; https://eli.thegreenplace.net/2007/06/21/sicp-section-11

;; Useful and improves upon the initial `good-enough?` procedure by comparing
;; the current guess to an improved guess instead of comparing the guess to the
;; the value we are trying to compute the sqrt of.

(new-good-enough? guess improved-guess)


