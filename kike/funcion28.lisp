(defun cDownInt2 (punto texto)
	(command "line"
		(list (car punto) (cadr punto))
		(list (car punto) (- (cadr punto) 1.2))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 0.4))
		(list (+ (car punto) 0.3) (- (cadr punto) 0.8))
		(list (car punto) (- (cadr punto) 1.2))
		"")
	(command "line"
		(list (+ (car punto) 0.7) (- (cadr punto) 1))
		(list (car punto) (- (cadr punto) 2.2))
		(list (car punto) (- (cadr punto) 3))
		"")
	(command "_.MTEXT" (list (+ (car punto) 0.7) (- (cadr punto) 1.6))
		"_Justify" "TL"
		"_Height" 0.5
		"_none" "@" texto "")
	write (list (car punto) (- (cadr punto) 3))
)
