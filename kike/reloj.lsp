;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(reloj punto "Hola")
)
;&barracudaStop
;-----llamada-----
(defun reloj (punto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2))
		(list (- (car punto) 0.8) (- (cadr punto) 2))
		"")
	(command "line"
		(list (- (car punto) 1.3) (cadr punto))
		(list (- (car punto) 1.3) (- (cadr punto) 0.5))
		"")
	(command "rectang"
		(list (- (car punto) 0.8) (- (cadr punto) 0.5))
		(list (- (car punto) 2) (- (cadr punto) 3.5))
		"")
	(command "line"
		(list (- (car punto) 1.4) (- (cadr punto) 2))
		(list (- (car punto) 1.4) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (- (car punto) 1.0) (- (cadr punto) 2.7))
		(list (- (car punto) 1.4) (- (cadr punto) 3.1))
		"")
	(command "circle"
		(list (- (car punto) 1.4) (- (cadr punto) 1.2))
		0.4
		"")
	(command "line"
		(list (- (car punto) 1.7) (- (cadr punto) 1.2))
		(list (- (car punto) 1.4) (- (cadr punto) 1.2))
		(list (- (car punto) 1.4) (- (cadr punto) 0.9))
		"")
	write (list (car punto) (- (cadr punto) 2))
)
