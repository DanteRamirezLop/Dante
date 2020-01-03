(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(borderSquare punto 0)
)
;----lamada---
(defun borderSquare (punto modo)
	(if (= modo 1)
		(progn
			(command "arc"
				(list (- (car punto) 0.2) (- (cadr punto) 0.035))
				(list (car punto) (- (cadr punto) 0.22))
				(list (+ (car punto) 0.2) (- (cadr punto) 0.035))
				"")
			(command "line"
				(list (car punto) (- (cadr punto) 0.22))
				(list (car punto) (- (cadr punto) 0.4))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (cadr punto))
				(list (- (car punto) 0.05) (cadr punto))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.5))
				(list (- (car punto) 0.05) (+ (cadr punto) 0.5))
				"")
			(command "line"
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "line"
				(list (- (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (cadr punto))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (- (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.05))
				(list (- (car punto) 0.05) (cadr punto))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.5))
				"")
			(command "arc" "c"
				(list (- (car punto) 0.05) (+ (cadr punto) 0.45))
				(list (- (car punto) 0.05) (+ (cadr punto) 0.5))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.45))
				"")
		)
		(progn
			(command "arc"
				(list (- (car punto) 0.035) (- (cadr punto) 0.2))
				(list (- (car punto) 0.22) (cadr punto))
				(list (- (car punto) 0.035) (+ (cadr punto) 0.2))
				"")
			(command "line"
				(list (- (car punto) 0.22) (cadr punto))
				(list (- (car punto) 0.4) (cadr punto))
				"")
			(command "line"
				(list (car punto) (+ (cadr punto) 0.05))
				(list (car punto) (- (cadr punto) 0.05))
				"")
			(command "line"
				(list (+ (car punto) 0.5) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.5) (- (cadr punto) 0.05))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.1))
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.1))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (- (cadr punto) 0.1))
				(list (+ (car punto) 0.45) (- (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.1))
				(list (car punto) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (- (cadr punto) 0.05))
				(list (car punto) (- (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (- (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.5) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.45) (- (cadr punto) 0.05))
				(list (+ (car punto) 0.45) (- (cadr punto) 0.1))
				(list (+ (car punto) 0.5) (- (cadr punto) 0.05))
				"")
		)
	)
)
