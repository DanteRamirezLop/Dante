(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(CIterador punto "Hola")
)
;----llamada---
(defun CIterador (punto data / pFin pivot)
	(foreach item data
		(if (= (car item) "iniCon")
			(progn 
				(if (= pFin nil)
					(setq pFin punto)
					(setq pFin (list (- (car pFin) 10) (cadr pFin)))
				)
				(setq pivot pFin)
			)
		)
		(if (= (car item) "int")
			(setq pivot (CDownInt pivot (cadr item)))
		)
		(if (= (car item) "mint")
			(setq pivot (cDownInt2 pivot (cadr item)))
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
