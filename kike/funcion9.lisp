(defun crownLeft (punto / pivot)
	(command "line"
		(list (- (car punto) 2.5) (cadr punto))
		punto
		(list (car punto) (+ (cadr punto) 7.7))
		(list (- (car punto) 2.5) (+ (cadr punto) 7.7))
		"")
	(setq pivot (list (- (car punto) 1.25) (+ (cadr punto) 1.5)))
	(command "line"
		(list (car pivot) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1))
		"")
	(command "line"
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		"")
	(command "arc"
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 1.3))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 0.7))
		"")
	(borderSquare (list (+ (car pivot) 1) (+ (cadr pivot) 5.8)) 0)
	(command "line"
		(list (+ (car pivot) 0.6) (+ (cadr pivot) 5.8))
		(list (car pivot) (+ (cadr pivot) 5.8))
		(list (car pivot) (- (cadr pivot) 3))
		"")
)