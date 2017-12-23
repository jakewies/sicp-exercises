;; Ben Bitdiddle has invented a test to determine whether 
;; the interpreter he is faced with is using applicative-order 
;; evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; Then he evaluates the expression:

(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order 
;; evaluation? What behavior will he observe with an interpreter that uses 
;; normal-order evaluation? Explain your answer. (Assume that the evaluation rule 
;; for the special form if is the same whether the interpreter is using normal or 
;; applicative order: The predicate expression is evaluated first, and the result determines 
;; whether to evaluate the consequent or the alternative expression.)


;; Applicative-order evaluation

(test 0 (p))

;; In applicative-order evaluation, this code never runs because it has to evaluate the 
;; parameter y, which is (p), to provide the test procedure with a value. It results in recursion,
;; or p continually calling itself.


;; Normal-order evaluation

(test 0 (p))

(if (= x 0)
    0
    (p)) ;; 0

;; In normal-order evaluation, the code executes because it does not have to evaulate
;; (p). This is because normal-order evaluates arguments when its values are needed. Since
;; the value of y is never needed, it is never evaluated and the code executes. 
