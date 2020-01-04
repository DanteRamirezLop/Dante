(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(diferencial punto "Hola")
)
;-------llamada----
(defun diferencial (punto texto1 texto2)
	(setvar "CLAYER" "Ambar")
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 1))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 0.7))
		(list (+ (car punto) 0.3) (- (cadr punto) 1.3))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 1.3))
		(list (+ (car punto) 0.3) (- (cadr punto) 0.7))
		"")
	(command "line"
		(list (- (car punto) 0.8) (- (cadr punto) 1))
		(list (- (car punto) 0) (- (cadr punto) 2))
		"")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 1.5))
		(list (- (car punto) 1.6) (- (cadr punto) 1.5))
		"")
	(command "line"
		(list (- (car punto) 1.6) (- (cadr punto) 1.2))
		(list (- (car punto) 1.6) (- (cadr punto) 1.8))
		"")
	(command "rectang"
		(list (- (car punto) 1.35) (- (cadr punto) 1.35))
		(list (- (car punto) 0.95) (- (cadr punto) 1.65))
		"")
	(command "line"
		(list (- (car punto) 1.15) (- (cadr punto) 1.2))
		(list (- (car punto) 1.15) (- (cadr punto) 3))
		(list (- (car punto) 0.5) (- (cadr punto) 3))
		"")
	(command "ellipse"
		(list (- (car punto) 0.5) (- (cadr punto) 3))
		(list (+ (car punto) 0.1) (- (cadr punto) 3))
		0.2
		"")
	(setvar "CLAYER" "Default")
	(command "_.MTEXT" (list (- (car punto) 1.7) (- (cadr punto) 1.75))
		"_Rotation" 90
		"_Justify" "BC" 
		"_Height" 0.5
		"_none" "@" "30mA" "")
	(command "_.MTEXT" (list (+ (car punto) 0.4) (- (cadr punto) 1.75))
		"_Rotation" 90
		"_Justify" "TC" 
		"_Height" 0.5
		"_none" "@" "4x25A" "")
	(setvar "CLAYER" "Verde")
	(command "line"
		(list (- (car punto) 0) (- (cadr punto) 2))
		(list (- (car punto) 0) (- (cadr punto) 3.5))
		"")
	write (list (- (car punto) 0) (- (cadr punto) 3.5))
)
