(defun crownCase1 (punto)
	(command "line"
		punto
		(list (car punto) (+ (cadr punto) 4.5))
		(list (- (car punto) 0.4) (+ (cadr punto) 5.3))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 1))
		(list (+ (car punto) 0.3) (+ (cadr punto) 1))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 1.35))
		(list (+ (car punto) 0.3) (+ (cadr punto) 0.65))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (+ (cadr punto) 1.35))
		(list (+ (car punto) 0.4) (+ (cadr punto) 0.65))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (+ (cadr punto) 1))
		(list (+ (car punto) 0.65) (+ (cadr punto) 1))
		"")
	(command "arc"
		(list (+ (car punto) 0.9) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.65) (+ (cadr punto) 1))
		(list (+ (car punto) 0.9) (+ (cadr punto) 0.7))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 0.6))
		(list (- (car punto) 0.9) (+ (cadr punto) 1))
		(list (- (car punto) 1.1) (+ (cadr punto) 1))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 1.15))
		(list (- (car punto) 1.3) (+ (cadr punto) 0.85))
		"")
	(command "line"
		(list (- (car punto) 1.2) (+ (cadr punto) 1.2))
		(list (- (car punto) 1.2) (+ (cadr punto) 0.8))
		"")
	(command "line"
		(list (- (car punto) 1.1) (+ (cadr punto) 1.25))
		(list (- (car punto) 1.1) (+ (cadr punto) 0.75))
		"")
	(command "rectang"
		(list (+ (car punto) 0.35) (+ (cadr punto) 2))
		(list (- (car punto) 0.35) (+ (cadr punto) 3.5))
		"")
	(command "line"
		(list (+ (car punto) 0.35) (+ (cadr punto) 2.75))
		(list (+ (car punto) 0.7) (+ (cadr punto) 2.75))
		(list (+ (car punto) 0.7) (+ (cadr punto) 4.9))
		(list (- (car punto) 0.2) (+ (cadr punto) 4.9))
		"")
	(command "circle"
		(list (car punto) (+ (cadr punto) 5.3))
		0.1
		"")
	(command "line"
		(list (- (car punto) 0.2) (+ (cadr punto) 5.4))
		(list (+ (car punto) 0.2) (+ (cadr punto) 5.4))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 5.4))
		(list (car punto) (+ (cadr punto) 5.8))
		"")
	(command "line"
		(list (- (car punto) 1.5) (+ (cadr punto) 5.8))
		(list (+ (car punto) 1.5) (+ (cadr punto) 5.8))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 3.6))
		(list (- (car punto) 0.9) (+ (cadr punto) 4))
		(list (- (car punto) 1.1) (+ (cadr punto) 4))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 4.15))
		(list (- (car punto) 1.3) (+ (cadr punto) 3.85))
		"")
	(command "line"
		(list (- (car punto) 1.2) (+ (cadr punto) 4.2))
		(list (- (car punto) 1.2) (+ (cadr punto) 3.8))
		"")
	(command "line"
		(list (- (car punto) 1.1) (+ (cadr punto) 4.25))
		(list (- (car punto) 1.1) (+ (cadr punto) 3.75))
		"")
	(command "line"
		(list (- (car punto) 0.5) (+ (cadr punto) 3.8))
		(list (- (car punto) 0.5) (+ (cadr punto) 0.8))
		"")
	;lineas random
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 4))
		(list (car punto) (+ (cadr punto) 4))
		"")
	(command "line"
		(list (+ (car punto) 1.35) (+ (cadr punto) 4.7))
		(list (+ (car punto) 1.35) (+ (cadr punto) 4.4))
		"")
)