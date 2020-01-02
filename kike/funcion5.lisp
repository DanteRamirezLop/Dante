;funcion solo para general
(defun Corona (punto texto)
	(setvar "CLAYER" "Cables")
	(command "line"
		punto
		(list (car punto) (+ (cadr punto) 12))
		"")
	(setvar "CLAYER" "AzulA")
	(command "line"
		(list (- (car punto) 0.2) (cadr punto))
		(list (- (car punto) 0.2) (+ (cadr punto) 12))
		"")
	(command "line"
		(list (+ (car punto) 0.2) (cadr punto))
		(list (+ (car punto) 0.2) (+ (cadr punto) 12))
		"")
	(setvar "CLAYER" "Verde")
	(command "line"
		(list (+ (car punto) 2) (+ (cadr punto) 5))
		(list (+ (car punto) 0.2) (+ (cadr punto) 5))
		(list (+ (car punto) 0.6) (+ (cadr punto) 5.2))
		(list (+ (car punto) 0.6) (+ (cadr punto) 4.8))
		(list (+ (car punto) 0.2) (+ (cadr punto) 5))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car punto) 2.1) (+ (cadr punto) 5))
		"_Justify" "ML" 
		"_Height" 0.5 
		"_none" "@" texto "")
;circulos
	(setvar "CLAYER" "RojoB")
	(command "circle"
		(list (car punto) (+ (cadr punto) 12.8))
		0.8
		"")
	(command "circle"
		(list (car punto) (+ (cadr punto) 14))
		0.8
		"")
	(setvar "CLAYER" "Default")
	(command "line"
		(list (car punto) (+ (cadr punto) 12.4))
		(list (car punto) (+ (cadr punto) 12.9))
		(list (- (car punto) 0.2) (+ (cadr punto) 13.1))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 12.9))
		(list (+ (car punto) 0.2) (+ (cadr punto) 13.1))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 12.8))
		(list (+ (car punto) 1.1) (+ (cadr punto) 12.8))
		(list (+ (car punto) 1.1) (+ (cadr punto) 12))
		"")
	(command "line"
		(list (+ (car punto) 1.4) (+ (cadr punto) 12))
		(list (+ (car punto) 0.8) (+ (cadr punto) 12))
		"")
	(command "line"
		(list (+ (car punto) 1.3) (+ (cadr punto) 11.85))
		(list (+ (car punto) 0.9) (+ (cadr punto) 11.85))
		"")
	(command "line"
		(list (+ (car punto) 1.2) (+ (cadr punto) 11.7))
		(list (+ (car punto) 1) (+ (cadr punto) 11.7))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 14.5))
		(list (+ (car punto) 0.35) (+ (cadr punto) 13.8))
		(list (- (car punto) 0.35) (+ (cadr punto) 13.8))
		(list (car punto) (+ (cadr punto) 14.5))
		"")
	;lineas de trafo
	(setvar "CLAYER" "Verde")
	(command "rectang"
		(list (+ (car punto) 2) (+ (cadr punto) 10))
		(list (- (car punto) 4) (+ (cadr punto) 17))
		"")
	(setvar "CLAYER" "Ambar")
	(command "_.MTEXT" (list (- (car punto) 1) (+ (cadr punto) 17.2))
		"_Justify" "BC" 
		"_Height" 0.4 
		"_none" "@" "CELDA DE\nTRAFO" "")
	(setvar "CLAYER" "Celeste")
	(command "line"
		(list (+ (car punto) 2) (+ (cadr punto) 10))
		(list (+ (car punto) 3) (+ (cadr punto) 10))
		(list (+ (car punto) 3) (+ (cadr punto) 9))
		"")
	(command "line"
		(list (+ (car punto) 3.3) (+ (cadr punto) 9))
		(list (+ (car punto) 2.7) (+ (cadr punto) 9))
		"")
	(command "line"
		(list (+ (car punto) 3.2) (+ (cadr punto) 8.85))
		(list (+ (car punto) 2.8) (+ (cadr punto) 8.85))
		"")
	(command "line"
		(list (+ (car punto) 3.1) (+ (cadr punto) 8.7))
		(list (+ (car punto) 2.9) (+ (cadr punto) 8.7))
		"")
	(command "line"
		(list (- (car punto) 2.7) (+ (cadr punto) 14))
		(list (- (car punto) 2.3) (+ (cadr punto) 14))
		(list (- (car punto) 2.5) (+ (cadr punto) 13.6))
		(list (- (car punto) 2.7) (+ (cadr punto) 14))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 14.8))
		(list (car punto) (+ (cadr punto) 15.8))
		(list (- (car punto) 2.5) (+ (cadr punto) 15.8))
		(list (- (car punto) 2.5) (+ (cadr punto) 8.5))
		"")
	;parte de celda de salida
	(command "line"
		(list (- (car punto) 9) (+ (cadr punto) 10))
		(list (- (car punto) 6) (+ (cadr punto) 10))
		(list (- (car punto) 6) (+ (cadr punto) 17.7))
		(list (- (car punto) 9) (+ (cadr punto) 17.7))
		"")
	(borderSquare (list (- (car punto) 7.5) (+ (cadr punto) 11)) 1)
	(crownCase1 (list (- (car punto) 7.5) (+ (cadr punto) 11.5)))
	(command ".zoom" "a" "")
	(command ".copy"
		(ssget "w" (list (- (car punto) 5.9) (+ (cadr punto) 9.9)) (list (- (car punto) 9.1) (+ (cadr punto) 17.8)))
		"" "d"
		(list -3 0 0)
		"")
	(command "line"
		(list (- (car punto) 2.5) (+ (cadr punto) 8.5))
		(list (- (car punto) 10.5) (+ (cadr punto) 8.5))
		(list (- (car punto) 10.5) (+ (cadr punto) 10.6))
		"")
	(crownLeft (list (- (car punto) 12) (+ (cadr punto) 10)))
	(crownCase2 (list (- (car punto) 14.5) (+ (cadr punto) 10)))
	(command "line"
		(list (- (car punto) 13.25) (+ (cadr punto) 8.5))
		(list (- (car punto) 16) (+ (cadr punto) 8.5))
		(list (- (car punto) 16) (+ (cadr punto) 10.4))
		"")
	(crownLeft (list (- (car punto) 17.5) (+ (cadr punto) 10)))
	(command "line"
		(list (- (car punto) 20) (+ (cadr punto) 10))
		(list (- (car punto) 20) (+ (cadr punto) 17.7))
		"")
	;borde y toques finales
	(setvar "CLAYER" "Ambar")
	(command "_.MTEXT" (list (- (car punto) 10.5) (+ (cadr punto) 17.9))
		"_Justify" "BC" 
		"_Height" 0.4 
		"_none" "@" "CELDA DE\nSALIDA" "")
	(command "_.MTEXT" (list (- (car punto) 16) (+ (cadr punto) 17.9))
		"_Justify" "BC" 
		"_Height" 0.4
		"_none" "@" "CELDA DE\nLLEGADA" "")
	(command "rectang"
		(list (- (car punto) 21.5) (+ (cadr punto) 7))
		(list (+ (car punto) 5) (+ (cadr punto) 22))
		"")
	(setvar "CLAYER" "Celeste")
	(command "line"
		(list (- (car punto) 18.75) (+ (cadr punto) 8.5))
		(list (- (car punto) 31.5) (+ (cadr punto) 8.5))
		"")
	(command "_.MTEXT" (list (- (car punto) 26.5) (+ (cadr punto) 8.7))
		"_Justify" "BC" 
		"_Height" 0.4
		"_none" "@" "VIENE DEL CONCENSIONARIO" "")
	(command "_.MTEXT" (list (+ (car punto) 4.7) (+ (cadr punto) 21.7))
		"_Justify" "TR" 
		"_Height" 0.4
		"_none" "@" "VER PROYECTO DE SISTEMA DE UTILIZACION" "")
)
