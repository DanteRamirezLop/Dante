(defun c:DesfasarCaja (punto data / counter))
;-------llamada---------
;funcion para desfasar la caja, es el espacio entre los tableros
(defun DesfasarCaja (punto data / counter)
	(setq counter -1.0)
	(foreach item data
		(if (= (car item) "inicir")
			(setq counter (+ counter 1.0))
		)
	)
	(setq counter (/ (* counter 5) 2))
	(if (>= counter 21)
		(setq counter 0.0)
		(setq counter (- 21.0 counter))
	)
	(setq counter (+ 21.0 counter))
	write (+ counter (car punto))
)
