;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(cRep punto "Hola")
)
;&barracudaStop
;----llamada---
;Empaca la info para las conexiones
(defun cRep (lista punto premier / retorno)
	(foreach cause premier
		(if (= retorno nil)
			(setq retorno (list (list (car cause) (cadr cause) (caddr cause) punto)))
			(setq retorno (append retorno (list (list (car cause) (cadr cause) (caddr cause) punto))))
		)
	)
	(foreach item lista
		(setq retorno (append retorno (list (list (car item) (cadr item) (caddr item) punto))))
	)
	write retorno
)
