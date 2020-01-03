(defun c:lineaG (punto puntoI texto1 texto2))
;-----llamada-----
(defun lineaG (punto puntoI texto1 texto2)
	(setvar "CLAYER" "Verde")
	(command "line"
		punto
		(list (car puntoI) (- (cadr puntoI) 47.2))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 0.1) (- (cadr punto) 1))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.6 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 0.1) (- (cadr punto) 1))
		"_Rotation" 90
		"_Justify" "TR" 
		"_Height" 0.6 
		"_none" "@" texto2 "")
	write (list (car puntoI) (- (cadr puntoI) 47.2))
)
