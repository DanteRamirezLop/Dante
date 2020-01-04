;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(conmutador punto "Hola")
)
;&barracudaStop
;-----llamada-----
(defun conmutador(punto orden texto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2.5))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 2.5))
		(list (- (car punto) 0.2) (- (cadr punto) 2.3))
		(list (car punto) (- (cadr punto) 2.1))
		"")
	(command "line"
		(list (- (car punto) 0.8) (- (cadr punto) 2.3))
		(list (car punto) (- (cadr punto) 3.5))
		(list (car punto) (- (cadr punto) 4))
		"")
	(command "rectang"
		(list (- (car punto) 1) (- (cadr punto) 1.9))
		(list (+ (car punto) 0.2) (- (cadr punto) 3.7))
		"")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 2.9))
		(list (- (car punto) 2.6) (- (cadr punto) 2.9))
		(list (- (car punto) 2.6) (- (cadr punto) 54))
		(list (- (car punto) 4) (- (cadr punto) 54))
		"")
	(command "line"
		(list (- (car punto) 3.8) (- (cadr punto) 53.2))
		(list (- (car punto) 2.6) (- (cadr punto) 54))
		(list (- (car punto) 3.8) (- (cadr punto) 54.8))
		"")
	(command "_.MTEXT" (list (- (car punto) 1.8) (- (cadr punto) 2.7))
		"_Rotation" 90
		"_Justify" "ML"
		"_Height" 0.5
		"_none" "@" (strcat "K" (itoa orden)) "")
	(command "_.MTEXT" (list (- (car punto) 1.8) (- (cadr punto) 3.1))
		"_Rotation" 90
		"_Justify" "MR"
		"_Height" 0.5
		"_none" "@" texto "")
	;pequeñas letras
	(command "_.MTEXT" (list (- (car punto) 3.9) (- (cadr punto) 54.8))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "A" "")
	(command "_.MTEXT" (list (- (car punto) 4.1) (- (cadr punto) 54))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "O" "")
	(command "_.MTEXT" (list (- (car punto) 3.9) (- (cadr punto) 53.2))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "M" "")
	write (list (car punto) (- (cadr punto) 4))
)
