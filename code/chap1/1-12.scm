; a recursive procedure that computes the elements in Pascal's triangle
(define (pascal-tri x y)
  (cond ((= y 1) 1)
        ((= x y) 1)
        ((> y x) 0)
        (else (+ (pascal-tri (- x 1) (- y 1))
                 (pascal-tri (- x 1) y)))))

(pascal-tri 1 1) ; 1
(pascal-tri 3 2) ; 2
(pascal-tri 5 3) ; 6