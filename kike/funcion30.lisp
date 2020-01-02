(defun cEnd (punto texto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 5))
		"")
	(command "line"
		(list (- (car punto) 1) (- (cadr punto) 5))
		(list (+ (car punto) 1) (- (cadr punto) 5))
		"")
	(command "arc" "c"
		(list (car punto) (- (cadr punto) 6.2))
		(list (+ (car punto) 1) (- (cadr punto) 6.2))
		(list (- (car punto) 1) (- (cadr punto) 6.2))
		"")
	(command "_.MTEXT" (list (car punto) (- (cadr punto) 7.75))
		"_Justify" "MC"
		"_Rotation" 90
		"_Height" 0.5
		"_none" "@" texto "")
)
