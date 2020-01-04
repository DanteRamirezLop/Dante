;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(CIterador punto "Hola")
)
;&barracudaStop
;----llamada---
(defun CIterador (punto data / pFin pivot intPivot)
	(foreach item data
		(if (= (car item) "iniCon")
			(progn 
				(if (= pFin nil)
					(setq pFin punto)
					(setq pFin (list (- (car pFin) 8) (cadr pFin)))
				)
			)
		)
		(if (= (car item) "int")
			(progn
				(if (= pFin nil)
					(setq pFin punto)
					(setq pFin (list (- (car pFin) 8) (cadr pFin)))
				)
				(setq pivot pFin)
				(setq pivot (CDownInt pivot (cadr item)))
				(setq intPivot nil)
			)
		)
		(if (= (car item) "mint")
			(progn
				(if (= intPivot nil)
					(setq intPivot pivot)
					(progn
						(command "line"
							intPivot
							(list (- (car intPivot) 8) (cadr intPivot))
							"")
						(setq intPivot (list (- (car intPivot) 8) (cadr intPivot)))
						(setq pivot intPivot)
						(setq pFin (list (- (car pFin) 8) (cadr pFin)))
					)
				)
				(setq pivot (cDownInt2 pivot (cadr item)))
			)
		)
		(if (= (car item) "end")
			(cEnd pivot (cadr item))
		)
	)
	(command "line"
		punto
		pFin
		"")
)
