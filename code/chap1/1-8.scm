(define (cube-root x)
  (define (good-enough? new old)
    (< (/ (abs (- new old)) old) 1e-6))
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* guess 2)) 3))
  (define (iter new old x)
    (if (good-enough? new old)
        new
        (iter (improve new x)
              new
              x)))
  (iter 1.0 x x))
(cube-root 90)