;&barracudaStart
(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(transferInt punto "Hola")
)
;&barracudaStop
;------llamada---

(defun transferInt (punto)
	(command "arc"
		(list (car punto) (cadr punto))
		(list (+ (car punto) 0.6) (+ (cadr punto) 0.65))
		(list (car punto) (+ (cadr punto) 1.3))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.6) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.6) (+ (cadr punto) 2.3))
		(list (car punto) (+ (cadr punto) 2.3))
		(list (+ (car punto) 1) (+ (cadr punto) 3.8))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 4.3))
		(list (- (car punto) 0.3) (+ (cadr punto) 3.7))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 3.7))
		(list (- (car punto) 0.3) (+ (cadr punto) 4.3))
		"")
)
