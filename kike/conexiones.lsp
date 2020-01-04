;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(conexiones punto "Hola")
)
;&barracudaStop
;--- llamada ---
;se encarga de conectar todas las conexiones existentes, excepto los electrogenos y los condensadores
(defun conexiones (data / p1 p2 crown)
	(setq crown (dataCrown))
	(foreach item data
		(if (/= crown nil)
			(if (and (= (car (caddr item)) (car (car crown))) (= (cadr (caddr item)) (cadr (car crown))))
					(Corona (car item) (cadr crown))
			)
		)
		(setvar "CLAYER" "Cables")
		(if (= (cadr item) 0)
			(foreach item2 data
				(if (and (and (= (cadr item2) 1) (= (car (caddr item)) (car (caddr item2)))) (= (cadr (caddr item)) (cadr (caddr item2)))) 
					(progn
						(setq p1 (car item))
						(setq p2 (car item2))
						(if (< (car (car item)) (car (car item2)))
							(command "pline"
								p1
								(list (car p1) (- (cadr p1) 12))
								(list (cadr (cadddr item)) (- (cadr p1) 12))
								(list (cadr (cadddr item)) (+ (cadr p2) 7.3))
								(list (car p2) (+ (cadr p2) 7.3))
								p2
								"")
							(command "pline"
								p1
								(list (car p1) (- (cadr p1) 12))
								(list (car (cadddr item)) (- (cadr p1) 12))
								(list (car (cadddr item)) (+ (cadr p2) 7.3))
								(list (car p2) (+ (cadr p2) 7.3))
								p2
								"")
						)
					)	
				)
			)
		)
	)
)
