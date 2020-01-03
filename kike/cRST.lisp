(defun c:cRST(punto))
;---llamada----
(defun cRST(punto)
	(command "line"
		punto
		(list (- (car punto) 0.5) (cadr punto))
		"")
	(command "rectang"
		(list (- (car punto) 0.5) (+ (cadr punto) 0.3))
		(list (- (car punto) 2) (- (cadr punto) 0.3))
		"")
	(command "line"
		(list (- (car punto) 0.85) (+ (cadr punto) 0.3))
		(list (- (car punto) 0.85) (- (cadr punto) 0.3))
		"")
	(command "line"
		(list (- (car punto) 1.65) (+ (cadr punto) 0.3))
		(list (- (car punto) 1.65) (- (cadr punto) 0.3))
		"")
	(command "line"
		(list (- (car punto) 2) (cadr punto))
		(list (- (car punto) 2.5) (cadr punto))
		"")
	(command "circle"
		(list (- (car punto) 2.9) (cadr punto))
		0.4
		"")
	(command "line"
		(list (- (car punto) 3.3) (cadr punto))
		(list (- (car punto) 3.6) (cadr punto))
		"")
	(command "circle"
		(list (- (car punto) 4) (cadr punto))
		0.4
		"")
	(command "line"
		(list (- (car punto) 4.4) (cadr punto))
		(list (- (car punto) 4.7) (cadr punto))
		"")
	(command "circle"
		(list (- (car punto) 5.1) (cadr punto))
		0.4
		"")
	;las aspas
	(command "line"
		(list (- (car punto) 5.7) (+ (cadr punto) 0.6))
		(list (- (car punto) 4.5) (- (cadr punto) 0.6))
		"")
	(command "line"
		(list (- (car punto) 5.7) (- (cadr punto) 0.6))
		(list (- (car punto) 4.5) (+ (cadr punto) 0.6))
		"")
	(command "line"
		(list (- (car punto) 4.6) (+ (cadr punto) 0.6))
		(list (- (car punto) 3.4) (- (cadr punto) 0.6))
		"")
	(command "line"
		(list (- (car punto) 4.6) (- (cadr punto) 0.6))
		(list (- (car punto) 3.4) (+ (cadr punto) 0.6))
		"")
	(command "line"
		(list (- (car punto) 3.5) (+ (cadr punto) 0.6))
		(list (- (car punto) 2.3) (- (cadr punto) 0.6))
		"")
	(command "line"
		(list (- (car punto) 3.5) (- (cadr punto) 0.6))
		(list (- (car punto) 2.3) (+ (cadr punto) 0.6))
		"")
	;cortar las aspas
	(command ".zoom" "a" "")
	(command "trim"
		(ssget "w" (list (- (car punto) 5.55) (+ (cadr punto) 0.41)) (list (- (car punto) 2.45) (- (cadr punto) 0.41)))
		"" "_Fence"
		(list (- (car punto) 5.55) (+ (cadr punto) 0.42))
		(list (- (car punto) 2.45) (+ (cadr punto) 0.42))
		"" ""
		)
	(command "trim"
		(ssget "w" (list (- (car punto) 5.55) (+ (cadr punto) 0.41)) (list (- (car punto) 2.45) (- (cadr punto) 0.41)))
		"" "_Fence"
		(list (- (car punto) 5.55) (- (cadr punto) 0.42))
		(list (- (car punto) 2.45) (- (cadr punto) 0.42))
		"" ""
		)
	;borrar algunas cosas que sobran
	(command "erase"
		(ssget "w" (list (- (car punto) 5.1) (+ (cadr punto) 0.45)) (list (- (car punto) 2.8) (+ (cadr punto) 0.8)))
		"")
	(command "erase"
		(ssget "w" (list (- (car punto) 5.1) (- (cadr punto) 0.45)) (list (- (car punto) 2.8) (- (cadr punto) 0.8)))
		"")
	;textos
	(command "_.MTEXT" (list (- (car punto) 5.1) (- (cadr punto) 0.45))
		"_Justify" "TR"
		"_Height" 0.4
		"_none" "@" "R" "")
	(command "_.MTEXT" (list (- (car punto) 4) (- (cadr punto) 0.45))
		"_Justify" "TR"
		"_Height" 0.4
		"_none" "@" "S" "")
	(command "_.MTEXT" (list (- (car punto) 2.9) (- (cadr punto) 0.45))
		"_Justify" "TR"
		"_Height" 0.4
		"_none" "@" "T" "")
	(command "_.MTEXT" (list (- (car punto) 0.6) (+ (cadr punto) 0.4))
		"_Justify" "BR"
		"_Height" 0.6
		"_none" "@" "3x2A" "")
)
