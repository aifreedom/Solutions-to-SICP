(define (sum-of-max-two a b c)
  (- (+ a b c) (min a b c)))

(sum-of-max-two 3 4 5)