(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(electrogeno punto "Hola")
)
;---llamada---
(defun electrogeno (DataColec / dataElec flag f1 f2)
	(setq dataElec (eData))
	(foreach item2 dataElec
		(setq flag nil)
		(setq f1 (car item2))
		(setq f2 (cadr item2))
		(foreach mini f1
			(foreach item DataColec
				(if (= (cadr item) 1)
					(if (and (= (car (caddr item)) (car mini)) (= (cadr (caddr item)) (cadr mini)))
						(progn
							(Eline (caddr mini) (cadddr mini) (car item))
							(if (= flag nil)
								(EIterar f2 (list (car (car item)) (+ (cadr (car item)) 40)))
								(command "line"
									flag
									(list (car (car item)) (+ (cadr (car item)) 40))
									"")
							)
							(setq flag (list (car (car item)) (+ (cadr (car item)) 40)))
						)
					)
				)
			)
		)
	)
)
