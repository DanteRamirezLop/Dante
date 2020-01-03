(defun c:contactor(punto))
;-----llamada-----
(defun contactor(punto)
	(setvar "CLAYER" "Verde")
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2))
		"")
	(setvar "CLAYER" "AzulB")
	(command "line"
		(list (+ (car punto) 0.3) (- (cadr punto) 1))
		(list (+ (car punto) 0.3) (- (cadr punto) 2))
		"")
	(setvar "CLAYER" "Ambar")
	(command "circle"
		(list (car punto) (- (cadr punto) 1))
		0.1
		"")
	(command "circle"
		(list (car punto) (- (cadr punto) 2))
		0.1
		"")
	(setvar "CLAYER" "AzulB")
	(command "line"
		(list (+ (car punto) 0.3) (- (cadr punto) 1.5))
		(list (- (car punto) 0.8) (- (cadr punto) 1.5))
		"")
	(command "rectang"
		(list (- (car punto) 0.8) (- (cadr punto) 1))
		(list (- (car punto) 2) (- (cadr punto) 2))
		"")
	(setvar "CLAYER" "Default")
	(command "_.MTEXT" (list (- (car punto) 1.4) (- (cadr punto) 1.5))
		"_Rotation" 90
		"_Justify" "MC" 
		"_Height" 0.7
		"_none" "@" "C" "")
	write (list (car punto) (- (cadr punto) 2))
)
