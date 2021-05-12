; Dawson Black
; 1.2

(define foo           ; size-n
  (lambda (x y)
    (cond ((<= y 0) x) ; stopping condition
          ((<= x 0) y) ; stopping condition
          ((>= x y) (+ x (foo (- x 1) (- y 2)))) ; size-m & constructs size-n out of size-m
          ((< x y) (+ y (foo (- x 2) (- y 3)))) ; size-m & constructs size-n out of size-m
          )))

(display(foo 5 6))
