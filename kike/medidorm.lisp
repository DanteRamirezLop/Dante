(defun c:medidorm(punto texto))
;-----llamada-----
(defun medidorm (punto texto)
	(setvar "CLAYER" "Celeste")
	(transferInt punto)
	(setvar "CLAYER" "Contorno")
	(command "rectang"
		(list (- (car punto) 0.8) (+ (cadr punto) 4.7))
		(list (+ (car punto) 3) (- (cadr punto) 0.7))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car punto) 3.2) (+ (cadr punto) 2))
		"_Justify" "ML" 
		"_Height" 0.5 
		"_none" "@" texto "")
	(setvar "CLAYER" "Verde")
	(command "line"
		(list (car punto) (+ (cadr punto) 4))
		(list (car punto) (+ (cadr punto) 7)) ;punto mas alto
		"")
;parte azul y celeste
	(setvar "CLAYER" "AzulB")
	(command "circle"
		(list (car punto) (+ (cadr punto) 5.5))
		0.2
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 5.5))
		(list (- (car punto) 2.4) (+ (cadr punto) 5.5))
		"")
	(command "rectang"
		(list (- (car punto) 2.4) (+ (cadr punto) 5.9))
		(list (- (car punto) 4.2) (+ (cadr punto) 5.1))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 3.3) (+ (cadr punto) 6))
		"_Justify" "BC" 
		"_Height" 0.5
		"_none" "@" "10A." "")
	(setvar "CLAYER" "AzulB")
	(command "line"
		(list (- (car punto) 2.8) (+ (cadr punto) 5.1))
		(list (- (car punto) 2.8) (+ (cadr punto) 5.9))
		"")
	(command "line"
		(list (- (car punto) 3.8) (+ (cadr punto) 5.1))
		(list (- (car punto) 3.8) (+ (cadr punto) 5.9))
		"")
	(setvar "CLAYER" "Celeste")
	(command "line"
		(list (- (car punto) 4.2) (+ (cadr punto) 5.5))
		(list (- (car punto) 6) (+ (cadr punto) 5.5))
		(list (- (car punto) 6) (+ (cadr punto) 3))
		"")
	(setvar "CLAYER" "AzulB")
	(command "rectang"
		(list (- (car punto) 7.2) (+ (cadr punto) 3))
		(list (- (car punto) 4.8) (+ (cadr punto) 1.4))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 6) (+ (cadr punto) 2.2))
		"_Justify" "MC" 
		"_Height" 0.6
		"_none" "@" "M. F." "")
	(command "_.MTEXT" (list (- (car punto) 7.6) (+ (cadr punto) 2.2))
		"_Justify" "MR" 
		"_Height" 0.5
		"_none" "@" "MEDIDOR\nMULTIFUNCION" "")
	(command "line"
		(list (- (car punto) 6) (+ (cadr punto) 1.4))
		(list (- (car punto) 6) (- (cadr punto) 2.1))
		(list (- (car punto) 0.5) (- (cadr punto) 2.1))
		"")
	(command "_.MTEXT" (list (- (car punto) 3.25) (- (cadr punto) 1.9))
		"_Justify" "BC" 
		"_Height" 0.5
		"_none" "@" "3x630/5" "")
	(setvar "CLAYER" "AzulB")
	(command "line"
		(list (- (car punto) 0.5) (- (cadr punto) 1.3))
		(list (+ (car punto) 0.5) (- (cadr punto) 1.7))
		(list (- (car punto) 0.5) (- (cadr punto) 2.1))
		(list (+ (car punto) 0.5) (- (cadr punto) 2.5))
		(list (- (car punto) 0.5) (- (cadr punto) 2.9))
		"")
	;falta la parte de la izquierda en azul y celeste
	write (list (car punto) (+ (cadr punto) 7))
)
