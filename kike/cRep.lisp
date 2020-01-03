(defun c:cRep (lista punto premier / retorno))
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
