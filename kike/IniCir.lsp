(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(IniCir punto "Hola")
)
;---llamada----
;funciones generales
(defun IniCir(punto texto)
	(setvar "CLAYER" "Cables")
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car punto) 0.1) (- (cadr punto) 0.1)) "_Justify" "TL" "_Height" 0.6 "_none" "@" texto "")
	write (list (car punto) (- (cadr punto) 2))
)
