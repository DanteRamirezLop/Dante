(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(interruptor punto "Hola")
)
;-----llamada-----
(defun interruptor (punto texto1 texto2)
	(setvar "CLAYER" "Celeste")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 0.4))
		(list (+ (car punto) 0.4) (+ (cadr punto) 0.4))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (- (cadr punto) 0.4))
		(list (- (car punto) 0.4) (+ (cadr punto) 0.4))
		"")
	(command "line"
		(list (+ (car punto) 1) (cadr punto))
		(list (car punto) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 2.5))
		(list (car punto) (- (cadr punto) 2.5))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 3.05))
		(list (car punto) (- (cadr punto) 3.7))
		"")
	(command "_.MTEXT" (list (- (car punto) 1.4) (cadr punto))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.5 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (- (car punto) 0.6) (cadr punto))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.5 
		"_none" "@" texto2 "")
	write (list (car punto) (- (cadr punto) 3.7))
)
