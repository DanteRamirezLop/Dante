;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(ultiTab punto "Hola")
)
;&barracudaStop
;-----llamada-----
(defun ultiTab(punto texto1 texto2)
	(setvar "CLAYER" "AzulA")
	(command "rectang"
		(list (- (car punto) 0.75) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.75) (+ (cadr punto) 0))
		"")
	(command "line"
		(list (- (car punto) 0.75) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.75) (+ (cadr punto) 0))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 0) (- (cadr punto) 2.7))
		"_Rotation" 90
		"_Justify" "MR" 
		"_Height" 0.8 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 0.5) (- (cadr punto) 2.7))
		"_Rotation" 90 
		"_Justify" "TR" 
		"_Height" 0.5 
		"_none" "@" texto2 "")
)
