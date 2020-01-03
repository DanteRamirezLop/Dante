(defun c:CUpInt (punto texto))
;------llamada---
(defun CUpInt (punto texto)
	(command "line"
		(list (- (car punto) 0.3) (+ (cadr punto) 0.3))
		(list (+ (car punto) 0.3) (- (cadr punto) 0.3))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 0.3))
		(list (- (car punto) 0.3) (- (cadr punto) 0.3))
		"")
	(command "line"
		(list (+ (car punto) 0.8) (- (cadr punto) 0.2))
		(list (car punto) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 2.2))
		(list (car punto) (- (cadr punto) 2.2))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 2.2))
		(list (+ (car punto) 0.4) (- (cadr punto) 2.55))
		(list (car punto) (- (cadr punto) 2.9))
		"")
	(command "_.MTEXT" (list (+ (car punto) 0.8) (- (cadr punto) 1.85))
		"_Justify" "ML"
		"_Height" 0.5
		"_none" "@" texto "")
	(command "line"
		(list (car punto) (- (cadr punto) 2.9))
		(list (car punto) (- (cadr punto) 3.5))
		"")
)
