
; PROGRAMA 1 [Funções utilizadas: if/eqv?/list-comp/(/)]:
 (begin 
 	(if (eqv? '(1 'a 3) '(1 'b 3)) 
 		(list-comp x (1 5 6 7 2 3 725 23 178) (* x 2) (eqv? (mod x 2) 0)) 
 		(/ 10 3))
 )

; PROGRAMA 2 [Funções utilizadas:  ]:

; PROGRAMA 3 [Funções utilizadas: ]:

; PROGRAMA 4 [Funções utilizadas: ]:

; PROGRAMA 5 [Funções utilizadas: ]:

; PROGRAMA 6 [Funções utilizadas: ]:

; PROGRAMA 7 [Funções utilizadas: recursao/if]:
(begin 
	(define fib 
		(lambda (n) 
			(if (< n 2) 
				n 
				(+ (fib (- n 2)) (fib (- n 1))) 
			) 
		) 
	) 
	(fib 7) 
) 

; PROGRAMA 8 [Funções utilizadas: if/and/>=/eqv?/length/cons/comment ]:
(begin 
	(if (and (>= 2 2) (eqv? (length (cons 'a  '(1 2 3 4 5))) 6)) (cons 'u '(h u u)) (* 2 5) (comment "Teste"))
 )
; PROGRAMA 9 [Funções utilizadas: lambda/do]:
(begin 
	(define null? 
		(lambda (l) 
			(eqv? (length l) 0 ) 
		) 
	) 
	(do 
		((x (1 2 3 4 5) (cdr x)) (sum 0 (+ sum (car x)))) 
		((null? x) sum) 
	) 
) 

; PROGRAMA 10 [Funções utilizadas: define/if/or/=/set!/+ ]:
;(begin (define a 10) (if (or (= a 1) (= a 9) ) (set! a 200) (+ a 2)  ) )
;

; PROGRAMA 11 (QUICKSORT):
(begin 
	(define a '(7 384 2161 39267 4623 7 291 010 3 2 1 4 2281 92 371)) 
	(define 
		quick 
		(lambda (x) 
			(if (eqv? (length x) 0) 
				'() 
				(concList 
					(concList 
						(quick (list-comp y (cdr x) (+ y 0) (>= (car x) y))) 
						(cons (car x) '()) 
					) 
					(quick (list-comp y (cdr x) (+ y 0) (< (car x) y))) 
				) 
			) 
		) 
	) 
	(quick a) 
)
