;&barracudaStart
(defun c:unigen (/ punto)
	(Layers)
	(setq punto (getpoint "punto"))
	(interruptor punto "Hola" "second" "three")
)
(defun Layers()
	(command "-layer"
		"m" "Contorno"
		"c" "t" "255,50,50" "" "Ltype" "CENTER" ""
		"m" "Celeste"
		"c" "t" "0,255,255" ""
		"m" "Cables"
		"c" "t" "127,255,127" "" "LWeight" 0.3 ""
		"m" "AzulA"
		"c" "t" "0,0,255" ""
		"m" "Verde"
		"c" "t" "0,255,0" ""
		"m" "Default"
		"c" "t" "255,255,255" ""
		"m" "AzulB"
		"c" "t" "90,90,255" ""
		"m" "Ambar"
		"c" "t" "255,255,0" ""
		"m" "RojoB"
		"c" "t" "255,20,20" ""
		"")
)
;&barracudaStop
;-----llamada-----
(defun interruptor (punto texto1 texto2 texto3)
	(setvar "CLAYER" "Celeste")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 0.4))
		(list (+ (car punto) 0.4) (+ (cadr punto) 0.4))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (- (cadr punto) 0.4))
		(list (- (car punto) 0.4) (+ (cadr punto) 0.4))
		"")
	(command "line"
		(list (+ (car punto) 1) (cadr punto))
		(list (car punto) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 1.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 2.5))
		(list (car punto) (- (cadr punto) 2.5))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.6) (- (cadr punto) 3.05))
		(list (car punto) (- (cadr punto) 3.7))
		"")
	(command "_.MTEXT" (list (- (car punto) 2.2) (cadr punto))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.5 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (- (car punto) 1.4) (cadr punto))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.5 
		"_none" "@" texto2 "")
	(command "_.MTEXT" (list (- (car punto) 0.6) (cadr punto))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.5 
		"_none" "@" texto3 "")
	write (list (car punto) (- (cadr punto) 3.7))
)
