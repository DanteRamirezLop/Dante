;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(PonerCaja punto "hola")
)
;&barracudaStop
;---llamada---
;funcion para poner la caja aca se puso el gabinete tambien
(defun PonerCaja (punto dato texto / counter pCaja)
	(setq counter -1.0)
	(foreach item dato
		(if (= (car item) "inicir")
			(setq counter (+ counter 1.0))
		)
	)
	(setq counter (+ (car punto) (/ (* counter 5) 2)))
	(if (< (- counter (car punto)) 21)
		(progn 
			(setq pCaja (list (- counter 21) (+ (cadr punto) 12.5)))
		)
		(setq pCaja (list (- (car punto) 1) (+ (cadr punto) 14)))
	)
	(setvar "CLAYER" "Contorno")
	(command "rectang"
		pCaja
		(list (+ (car pCaja) 7) (- (cadr pCaja) 3.6))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car pCaja) 0.4) (- (cadr pCaja) 1.8))
		"_Justify" "ML" 
		"_Height" 0.6 
		"_none" "@" (car texto) "")
	(command "_.MTEXT" (list (+ (car pCaja) 0.4) (- (cadr pCaja) 4.3))
		"_Justify" "ML" 
		"_Height" 0.6 
		"_none" "@" (cadr texto) "")
	write pCaja
)
