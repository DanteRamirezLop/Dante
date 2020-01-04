(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(cRele punto "Hola")
)
;---llamada----
(defun cRele (punto punto2)
	(command "rectang"
		(list (- (car punto) 3) (+ (cadr punto) 2))
		(list (+ (car punto) 3) (- (cadr punto) 2))
		"")
	(command "_.MTEXT" (list (car punto) (+ (cadr punto) 1))
		"_Justify" "MC"
		"_Height" 0.7
		"_none" "@" "RELE" "")
	(command "_.MTEXT" (list (- (car punto) 1.5) (- (cadr punto) 0.7))
		"_Justify" "MC"
		"_Height" 0.7
		"_none" "@" "COS" "")
	(command "_.MTEXT" (list (+ (car punto) 1.9) (- (cadr punto) 0.7))
		"_Justify" "ML"
		"_Height" 0.7
		"_none" "@" "1" "")
	(command "arc"
		(list (+ (car punto) 0.3) (- (cadr punto) 1.6))
		(list (+ (car punto) 0.8) (- (cadr punto) 1.0))
		(list (+ (car punto) 1) (- (cadr punto) 0.4))
		"")
	(command "arc"
		(list (+ (car punto) 1) (- (cadr punto) 0.4))
		(list (+ (car punto) 1.3) (- (cadr punto) 0.2))
		(list (+ (car punto) 1.6) (- (cadr punto) 0.4))
		"")
	(command "arc"
		(list (+ (car punto) 1.6) (- (cadr punto) 0.4))
		(list (+ (car punto) 1.35) (- (cadr punto) 1.0))
		(list (+ (car punto) 0.85) (- (cadr punto) 0.9))
		"")
	(command "line"
		(list (+ (car punto) 1) (+ (cadr punto) 2))
		(list (+ (car punto) 1) (+ (cadr punto2) 2))
		(list (car punto2) (+ (cadr punto2) 2))
		"")
	(command "line"
		(list (- (car punto) 1) (+ (cadr punto) 2))
		(list (- (car punto) 1) (+ (cadr punto2) 4))
		(list (- (car punto2) 3.5) (+ (cadr punto2) 4))
		"")
	(command "rectang"
		(list (- (car punto2) 3.5) (+ (cadr punto2) 4.4))
		(list (- (car punto2) 1) (+ (cadr punto2) 3.6))
		"")
	(command "line"
		(list (- (car punto2) 1) (+ (cadr punto2) 4))
		(list (car punto2) (+ (cadr punto2) 4))
		"")
	(command "line"
		(list (- (car punto2) 3) (+ (cadr punto2) 4.4))
		(list (- (car punto2) 3) (+ (cadr punto2) 3.6))
		"")
	(command "line"
		(list (- (car punto2) 1.5) (+ (cadr punto2) 4.4))
		(list (- (car punto2) 1.5) (+ (cadr punto2) 3.6))
		"")
	(command "_.MTEXT" (list (- (car punto2) 2.25) (+ (cadr punto2) 3.5))
		"_Justify" "TC"
		"_Height" 0.6
		"_none" "@" "2A" "")
	(command "arc"
		(list (car punto2) (+ (cadr punto2) 2))
		(list (- (car punto2) 0.25) (+ (cadr punto2) 2.25))
		(list (car punto2) (+ (cadr punto2) 2.5))
		"")
	(command "arc"
		(list (car punto2) (+ (cadr punto2) 2))
		(list (- (car punto2) 0.25) (+ (cadr punto2) 1.75))
		(list (car punto2) (+ (cadr punto2) 1.5))
		"")
	(command "_.MTEXT" (list (+ (car punto2) 0.5) (+ (cadr punto2) 2))
		"_Justify" "BL"
		"_Height" 0.5
		"_none" "@" "1T/C\n1000/5A" "")
)
