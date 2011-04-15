(define (new-sqrt x)
  (define (average a b)
    (/ (+ a b) 2))
  (define (new-good-enough? new old)
    (< (/ (abs (- new old)) old) 0.001))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (new-sqrt-iter new old x)
    (if (new-good-enough? new old)
        new
        (new-sqrt-iter (improve new x)
                       new
                       x)))
  (new-sqrt-iter 1.0 x x))

(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (iter guess x)
    (if (good-enough? guess x)
        guess
        (iter (improve guess x)
              x)))
  (iter 1.0 x))


(good-enough? 1e-3 1.123456e-6)
(good-enough? 999999999.999999 1000000000000000000)
(new-good-enough? 10 10)

(sqrt 1e-10)
(new-sqrt 1e-10)