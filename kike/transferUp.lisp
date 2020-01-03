(defun c:transferUp (punto texto))
;----llamada--
;dibuja la transferencia en la parte de arriba del tablero
(defun transferUp (punto texto)
	(command "line"
		(list (- (car punto) 2) (+ (cadr punto) 1.5))
		(list (- (car punto) 2) (cadr punto))
		(list (+ (car punto) 2) (cadr punto))
		(list (+ (car punto) 2) (+ (cadr punto) 1.5))
		"")
	(transferInt (list (- (car punto) 2) (+ (cadr punto) 1.5)))
	(transferInt (list (+ (car punto) 2) (+ (cadr punto) 1.5)))
	(command "_.MTEXT" (list (- (car punto) 2.4) (+ (cadr punto) 2.1))
		"_Justify" "BR"
		"_Height" 0.5
		"_none" "@" (cadr (car texto)) "")
	(command "_.MTEXT" (list (+ (car punto) 3) (+ (cadr punto) 2.1))
		"_Justify" "BL"
		"_Height" 0.5
		"_none" "@" (cadr (cadr texto)) "")
	;linea del centro
	(command "line"
		(list (- (car punto) 2) (+ (cadr punto) 4.55))
		(list (+ (car punto) 3.5) (+ (cadr punto) 4.55))
		"")
	(command "pline"
		(list (+ (car punto) 0.1) (+ (cadr punto) 4.55))
		(list (+ (car punto) 0.3) (+ (cadr punto) 4.85))
		(list (- (car punto) 0.1) (+ (cadr punto) 4.85))
		"c"
		"")
	(command "_.MTEXT" (list (- (car punto) 2.4) (+ (cadr punto) 4.55))
		"_Justify" "BR"
		"_Height" 0.3
		"_none" "@" "N" "")
	(command "_.MTEXT" (list (+ (car punto) 3.7) (+ (cadr punto) 4.55))
		"_Justify" "BL"
		"_Height" 0.3
		"_none" "@" "E" "")
	write (list 
			(list (- (car punto) 2) (+ (cadr punto) 5.5))
			(list (+ (car punto) 2) (+ (cadr punto) 5.5))
			)
)
