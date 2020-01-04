(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(Eline punto "hola")
)
;--llamada---
(defun Eline (texto1 texto2 punto)
	(command "line"
		punto
		(list (car punto) (+ (cadr punto) 40))
		"")
	(command "_.MTEXT" (list (- (car punto) 0.2) (+ (cadr punto) 20))
		"_Justify" "BC"
		"_Height" 0.5
		"_Rotation" 90
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 1) (+ (cadr punto) 20))
		"_Justify" "BC"
		"_Height" 0.5
		"_Rotation" 90
		"_none" "@" texto2 "")
)
