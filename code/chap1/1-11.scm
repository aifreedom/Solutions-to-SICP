; f(n) = f(n-1) + 2f(n-2) + 3f(n-3)

; recursive procedure f                                        
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* (f (- n 2)) 2)
         (* (f (- n 3)) 3))))

; iterative procedure f
(define (f n)
  (define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter (+ a (* b 2) (* c 3)) a b (- count 1))))
  (f-iter 2 1 0 n))

(f 0)   ; 0
(f 1)   ; 1
(f 2)   ; 2
(f 3)   ; 4
(f 4)   ; 11
(f 5)   ; 25
(f 6)   ; 59
(f 7)   ; 142