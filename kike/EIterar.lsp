(defun c:EIterar (data punto))
;---llamada----
(defun EIterar (data punto)
	(command "line"
		punto
		;(list (car punto) (+ (cadr punto) 8))
		(list (car punto) (+ (cadr punto) 15))
		(list (+ (car punto) 1.5) (+ (cadr punto) 18))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 18))
		(list (car punto) (+ (cadr punto) 28))
		"")
	(command "line"
		(list (- (car punto) 1) (+ (cadr punto) 10))
		(list (+ (car punto) 1) (+ (cadr punto) 10.5))
		(list (- (car punto) 1) (+ (cadr punto) 11))
		(list (+ (car punto) 1) (+ (cadr punto) 11.5))
		(list (- (car punto) 1) (+ (cadr punto) 12))
		"")
	(command "line"
		(list (- (car punto) 1) (+ (cadr punto) 11))
		(list (- (car punto) 10) (+ (cadr punto) 11))
		(list (- (car punto) 10) (+ (cadr punto) 15))
		"")
	(command "rectang"
		(list (- (car punto) 7.5) (+ (cadr punto) 15))
		(list (- (car punto) 12.5) (+ (cadr punto) 18))
		"")
	(command "_.MTEXT" (list (- (car punto) 10) (+ (cadr punto) 16.5))
		"_Justify" "MC"
		"_Height" 1.2
		"_none" "@" "M.F." "")
	(command "rectang"
		(list (- (car punto) 8.7) (+ (cadr punto) 12.3))
		(list (- (car punto) 2.3) (+ (cadr punto) 13.7))
		"")
	(command "_.MTEXT" (list (- (car punto) 5.5) (+ (cadr punto) 13))
		"_Justify" "MC"
		"_Height" 0.7
		"_none" "@" "36kA.-380V." "")
	(command "_.MTEXT" (list (- (car punto) 5) (+ (cadr punto) 17))
		"_Justify" "BC"
		"_Height" 0.7
		"_none" "@" "3x500 A." "")
	(command "line"
		(list (- (car punto) 10) (+ (cadr punto) 18))
		(list (- (car punto) 10) (+ (cadr punto) 21))
		(list (- (car punto) 6) (+ (cadr punto) 21))
		"")
	(command "rectang"
		(list (- (car punto) 6) (+ (cadr punto) 21.5))
		(list (- (car punto) 3.5) (+ (cadr punto) 20.5))
		"")
	(command "line"
		(list (- (car punto) 5.5) (+ (cadr punto) 21.5))
		(list (- (car punto) 5.5) (+ (cadr punto) 20.5))
		"")
	(command "line"
		(list (- (car punto) 4) (+ (cadr punto) 21.5))
		(list (- (car punto) 4) (+ (cadr punto) 20.5))
		"")
	(command "_.MTEXT" (list (- (car punto) 4.75) (+ (cadr punto) 21.7))
		"_Justify" "BC"
		"_Height" 0.6
		"_none" "@" "10 A." "")
	(command "line"
		(list (- (car punto) 3.5) (+ (cadr punto) 21))
		(list (car punto) (+ (cadr punto) 21))
		"")
	(command "rectang"
		(list (- (car punto) 6) (+ (cadr punto) 10))
		(list (- (car punto) 4) (+ (cadr punto) 8))
		"")
	(command "line"
		(list (- (car punto) 6) (+ (cadr punto) 10))
		(list (- (car punto) 4) (+ (cadr punto) 8))
		"")
	(command "line"
		(list (- (car punto) 4) (+ (cadr punto) 10))
		(list (- (car punto) 6) (+ (cadr punto) 8))
		"")
	(command "pline"
		(list (- (car punto) 6) (+ (cadr punto) 9.5))
		(list (- (car punto) 13) (+ (cadr punto) 9.5))
		"a"
		(list (- (car punto) 14) (+ (cadr punto) 10.5))
		"l"
		(list (- (car punto) 14) (+ (cadr punto) 25))
		"a"
		(list (- (car punto) 13) (+ (cadr punto) 26))
		"l"
		(list (- (car punto) 12) (+ (cadr punto) 26))
		"")
	(command "_.MTEXT" (list (- (car punto) 11.5) (+ (cadr punto) 26))
		"_Justify" "ML"
		"_Height" 0.5
		"_none" "@" "PANELES\nDE ALARMA\nPARA GRUPOS\nELECTROGENOS" "")
	(command "rectang"
		(list (- (car punto) 12) (+ (cadr punto) 24.1))
		(list (- (car punto) 5.5) (+ (cadr punto) 27.9))
		"")
	(command "rectang"
		(list (- (car punto) 13) (+ (cadr punto) 23.5))
		(list (+ (car punto) 2) (+ (cadr punto) 7))
		"")
	(command "line"
		(list (- (car punto) 4) (+ (cadr punto) 9))
		(list (+ (car punto) 2.6) (+ (cadr punto) 9))
		(list (+ (car punto) 2.6) (+ (cadr punto) 16))
		"")
	(command "line"
		(list (+ (car punto) 0.75) (+ (cadr punto) 16.5))
		(list (+ (car punto) 2.4) (+ (cadr punto) 16.5))
		"")
	(command "rectang"
		(list (+ (car punto) 2.4) (+ (cadr punto) 16))
		(list (+ (car punto) 3.4) (+ (cadr punto) 17))
		"")
	(command "_.MTEXT" (list (+ (car punto) 2.9) (+ (cadr punto) 16.5))
		"_Justify" "MC"
		"_Height" 0.8
		"_none" "@" "T" "")
	;parte de arriba
	(command "line"
		(list (+ (car punto) 2.6) (+ (cadr punto) 17))
		(list (+ (car punto) 2.6) (+ (cadr punto) 23))
		(list (+ (car punto) 10.5) (+ (cadr punto) 23))
		(list (+ (car punto) 10.5) (+ (cadr punto) 28))
		"")
	(command "rectang"
		(list (+ (car punto) 9.5) (+ (cadr punto) 28))
		(list (+ (car punto) 11.5) (+ (cadr punto) 29))
		"")
	(command "line"
		(list (+ (car punto) 9.5) (+ (cadr punto) 28))
		(list (+ (car punto) 11.5) (+ (cadr punto) 29))
		"")
	(command "line"
		(list (+ (car punto) 9.5) (+ (cadr punto) 28.5))
		(list (+ (car punto) 6.8) (+ (cadr punto) 28.5))
		"")
	(command "line"
		(list (+ (car punto) 7) (+ (cadr punto) 28.8))
		(list (+ (car punto) 7.8) (+ (cadr punto) 28.8))
		"")
	(command "line"
		(list (+ (car punto) 7) (+ (cadr punto) 28.2))
		(list (+ (car punto) 7.8) (+ (cadr punto) 28.2))
		"")
	(command "line"
		(list (+ (car punto) 7.4) (+ (cadr punto) 28.2))
		(list (+ (car punto) 7.4) (+ (cadr punto) 26.6))
		"")
	(command "line"
		(list (+ (car punto) 7) (+ (cadr punto) 26.6))
		(list (+ (car punto) 7.8) (+ (cadr punto) 26.6))
		"")
	(command "line"
		(list (+ (car punto) 7.15) (+ (cadr punto) 26.3))
		(list (+ (car punto) 7.65) (+ (cadr punto) 26.3))
		"")
	(command "line"
		(list (+ (car punto) 7.3) (+ (cadr punto) 26))
		(list (+ (car punto) 7.5) (+ (cadr punto) 26))
		"")
	(command "line"
		(list (+ (car punto) 7.4) (+ (cadr punto) 28.8))
		(list (+ (car punto) 7.4) (+ (cadr punto) 30))
		(list (+ (car punto) 4.7) (+ (cadr punto) 30))
		"")
	(command "line"
		(list (+ (car punto) 4.7) (+ (cadr punto) 29.5))
		(list (+ (car punto) 4.7) (+ (cadr punto) 31.5))
		"")
	(command "line"
		(list (+ (car punto) 6.2) (+ (cadr punto) 28.5))
		(list (+ (car punto) 4.7) (+ (cadr punto) 29.5))
		(list (+ (car punto) 3.2) (+ (cadr punto) 28.5))
		"")
	(command "circle"
		(list (car punto) (+ (cadr punto) 30.5))
		2.5
		"")
	(command "_.MTEXT" (list (car punto) (+ (cadr punto) 31))
		"_Justify" "MC"
		"_Height" 1.8
		"_none" "@" "G" "")
	(command "line"
		(list (- (car punto) 0.7) (+ (cadr punto) 29.7))
		(list (car punto) (+ (cadr punto) 29.2))
		(list (+ (car punto) 0.7) (+ (cadr punto) 29.7))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 29.2))
		(list (car punto) (+ (cadr punto) 28.5))
		"")
	;textos finales
	(command "_.MTEXT" (list (- (car punto) 6.5) (+ (cadr punto) 33.5))
		"_Justify" "BL"
		"_Height" 0.8
		"_none" "@" (strcat "GRUPO ELECTROGENO\n" (car data) "\n" (cadr data)) "")
)
