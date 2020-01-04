;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(CDownInt punto "Hola")
)
;&barracudaStop
;------llamada---
(defun CDownInt (punto texto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 3))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 3.3))
		(list (+ (car punto) 0.3) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (- (cadr punto) 3.3))
		(list (- (car punto) 0.3) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (+ (car punto) 0.7) (- (cadr punto) 3.2))
		(list (car punto) (- (cadr punto) 4.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 4.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 5.2))
		(list (car punto) (- (cadr punto) 5.2))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 5.2))
		(list (+ (car punto) 0.4) (- (cadr punto) 5.55))
		(list (car punto) (- (cadr punto) 5.9))
		"")
	(command "_.MTEXT" (list (+ (car punto) 0.8) (- (cadr punto) 5.2))
		"_Justify" "BL"
		"_Height" 0.5
		"_none" "@" texto "")
	(command "line"
		(list (car punto) (- (cadr punto) 5.9))
		(list (car punto) (- (cadr punto) 6.5))
		"")
	write (list (car punto) (- (cadr punto) 6.5))
)
