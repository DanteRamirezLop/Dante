

;----lamada---
(defun borderSquare (punto modo)
	(if (= modo 1)
		(progn
			(command "arc"
				(list (- (car punto) 0.2) (- (cadr punto) 0.035))
				(list (car punto) (- (cadr punto) 0.22))
				(list (+ (car punto) 0.2) (- (cadr punto) 0.035))
				"")
			(command "line"
				(list (car punto) (- (cadr punto) 0.22))
				(list (car punto) (- (cadr punto) 0.4))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (cadr punto))
				(list (- (car punto) 0.05) (cadr punto))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.5))
				(list (- (car punto) 0.05) (+ (cadr punto) 0.5))
				"")
			(command "line"
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "line"
				(list (- (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (cadr punto))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (- (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.05))
				(list (- (car punto) 0.05) (cadr punto))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.1) (+ (cadr punto) 0.45))
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.5))
				"")
			(command "arc" "c"
				(list (- (car punto) 0.05) (+ (cadr punto) 0.45))
				(list (- (car punto) 0.05) (+ (cadr punto) 0.5))
				(list (- (car punto) 0.1) (+ (cadr punto) 0.45))
				"")
		)
		(progn
			(command "arc"
				(list (- (car punto) 0.035) (- (cadr punto) 0.2))
				(list (- (car punto) 0.22) (cadr punto))
				(list (- (car punto) 0.035) (+ (cadr punto) 0.2))
				"")
			(command "line"
				(list (- (car punto) 0.22) (cadr punto))
				(list (- (car punto) 0.4) (cadr punto))
				"")
			(command "line"
				(list (car punto) (+ (cadr punto) 0.05))
				(list (car punto) (- (cadr punto) 0.05))
				"")
			(command "line"
				(list (+ (car punto) 0.5) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.5) (- (cadr punto) 0.05))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.1))
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.1))
				"")
			(command "line"
				(list (+ (car punto) 0.05) (- (cadr punto) 0.1))
				(list (+ (car punto) 0.45) (- (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (+ (cadr punto) 0.1))
				(list (car punto) (+ (cadr punto) 0.05))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.05) (- (cadr punto) 0.05))
				(list (car punto) (- (cadr punto) 0.05))
				(list (+ (car punto) 0.05) (- (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.5) (+ (cadr punto) 0.05))
				(list (+ (car punto) 0.45) (+ (cadr punto) 0.1))
				"")
			(command "arc" "c"
				(list (+ (car punto) 0.45) (- (cadr punto) 0.05))
				(list (+ (car punto) 0.45) (- (cadr punto) 0.1))
				(list (+ (car punto) 0.5) (- (cadr punto) 0.05))
				"")
		)
	)
)


;------llamada---
(defun CDownInt (punto texto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 3))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 3.3))
		(list (+ (car punto) 0.3) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (- (cadr punto) 3.3))
		(list (- (car punto) 0.3) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (+ (car punto) 0.7) (- (cadr punto) 3.2))
		(list (car punto) (- (cadr punto) 4.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 4.5))
		(list (+ (car punto) 0.4) (- (cadr punto) 5.2))
		(list (car punto) (- (cadr punto) 5.2))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 5.2))
		(list (+ (car punto) 0.4) (- (cadr punto) 5.55))
		(list (car punto) (- (cadr punto) 5.9))
		"")
	(command "_.MTEXT" (list (+ (car punto) 0.8) (- (cadr punto) 5.2))
		"_Justify" "BL"
		"_Height" 0.5
		"_none" "@" texto "")
	(command "line"
		(list (car punto) (- (cadr punto) 5.9))
		(list (car punto) (- (cadr punto) 6.5))
		"")
	write (list (car punto) (- (cadr punto) 6.5))
)


;--llamada---
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


;----llamada----
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


;----llamada---
(defun CIterador (punto data / pFin pivot intPivot)
	(foreach item data
		(if (= (car item) "iniCon")
			(progn 
				(if (= pFin nil)
					(setq pFin punto)
					(setq pFin (list (- (car pFin) 8) (cadr pFin)))
				)
			)
		)
		(if (= (car item) "int")
			(progn
				(if (= pFin nil)
					(setq pFin punto)
					(setq pFin (list (- (car pFin) 8) (cadr pFin)))
				)
				(setq pivot pFin)
				(setq pivot (CDownInt pivot (cadr item)))
				(setq intPivot nil)
			)
		)
		(if (= (car item) "mint")
			(progn
				(if (= intPivot nil)
					(setq intPivot pivot)
					(progn
						(command "line"
							intPivot
							(list (- (car intPivot) 8) (cadr intPivot))
							"")
						(setq intPivot (list (- (car intPivot) 8) (cadr intPivot)))
						(setq pivot intPivot)
						(setq pFin (list (- (car pFin) 8) (cadr pFin)))
					)
				)
				(setq pivot (cDownInt2 pivot (cadr item)))
			)
		)
		(if (= (car item) "end")
			(cEnd pivot (cadr item))
		)
	)
	(command "line"
		punto
		pFin
		"")
)


;----llamada---
;de los condensadores por fin 
(defun condensadores(punto1 datos / counter punto2 puntoRele condensadorData nCon)
	(setq condensadorData (cData))
	(setq counter -1.0)
	(foreach item datos
		(if (= (car item) "inicir")
			(setq counter (+ counter 1.0))
		)
	)
	(setq counter (/ (* counter 5) 2))
	(setq puntoRele (list (+ (car punto1) counter) (cadr punto1)))
	(if (>= counter 21)
		(setq counter -3.0)
		(setq counter (- counter 24.0))
	)
	(setq punto2 (list (+ (car punto1) counter) (cadr punto1)))
	(cRele (list (- (car punto2) 5) (- (cadr punto2) 7)) puntoRele)
	(setq nCon -1.0)
	(foreach item condensadorData
		(if (= (car item) "end")
			(setq nCon (+ nCon 1.0))
		)
	)
	(setq nCon (+ (* nCon 5.0) 12.0))
	(command "line"
		punto1
		(list (- (car punto2) nCon) (cadr punto2))
		(list (- (car punto2) nCon) (- (cadr punto2) 2))
		"")
	(cRST (list (- (car punto2) nCon) (- (cadr punto2) 1)))
	(CUpInt (list (- (car punto2) nCon) (- (cadr punto2) 2)) "QCG\n160A")
	(CIterador (list (- (car punto2) 12) (- (cadr punto2) 5.5)) condensadorData)
	;caja y ultimos toques
	(command "_.MTEXT" (list (- (- (car punto2) nCon) 3) (+ (cadr punto2) 4))
		"_Justify" "BC"
		"_Height" 0.5
		"_none" "@" "NOTA: Banco de condensadores con reactor desintonizado para evitar armonicos.
		\nNOTA: Los contactores de este banco serán especiales para condensadores" "")
	(setq nCon (+ (* (- nCon 12.0) 2.0) 20.0))
	(command "rectang"
		(list (car punto2) (+ (cadr punto2) 15.0))
		(list (- (car punto2) nCon) (- (cadr punto2) 30))
		"")
	(command "_.MTEXT" (list (+ (- (car punto2) nCon) 0.5) (+ (cadr punto2) 14.0))
		"_Justify" "TL"
		"_Height" 0.8
		"_none" "@" "BANCO DE CONDENSADORES CON REACTORES\nDESINTONIZADOS PARA FILTRAR ARMONICOS" "")

)


;--- llamada ---
;se encarga de conectar todas las conexiones existentes, excepto los electrogenos y los condensadores
(defun conexiones (data / p1 p2 crown)
	(setq crown (dataCrown))
	(foreach item data
		(if (/= crown nil)
			(if (and (= (car (caddr item)) (car (car crown))) (= (cadr (caddr item)) (cadr (car crown))))
					(Corona (car item) (cadr crown))
			)
		)
		(setvar "CLAYER" "Cables")
		(if (= (cadr item) 0)
			(foreach item2 data
				(if (and (and (= (cadr item2) 1) (= (car (caddr item)) (car (caddr item2)))) (= (cadr (caddr item)) (cadr (caddr item2)))) 
					(progn
						(setq p1 (car item))
						(setq p2 (car item2))
						(if (< (car (car item)) (car (car item2)))
							(command "pline"
								p1
								(list (car p1) (- (cadr p1) 12))
								(list (cadr (cadddr item)) (- (cadr p1) 12))
								(list (cadr (cadddr item)) (+ (cadr p2) 7.3))
								(list (car p2) (+ (cadr p2) 7.3))
								p2
								"")
							(command "pline"
								p1
								(list (car p1) (- (cadr p1) 12))
								(list (car (cadddr item)) (- (cadr p1) 12))
								(list (car (cadddr item)) (+ (cadr p2) 7.3))
								(list (car p2) (+ (cadr p2) 7.3))
								p2
								"")
						)
					)	
				)
			)
		)
	)
)


;-----llamada-----
(defun conmutador(punto orden texto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2.5))
		"")
	(command "arc"
		(list (car punto) (- (cadr punto) 2.5))
		(list (- (car punto) 0.2) (- (cadr punto) 2.3))
		(list (car punto) (- (cadr punto) 2.1))
		"")
	(command "line"
		(list (- (car punto) 0.8) (- (cadr punto) 2.3))
		(list (car punto) (- (cadr punto) 3.5))
		(list (car punto) (- (cadr punto) 4))
		"")
	(command "rectang"
		(list (- (car punto) 1) (- (cadr punto) 1.9))
		(list (+ (car punto) 0.2) (- (cadr punto) 3.7))
		"")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 2.9))
		(list (- (car punto) 2.6) (- (cadr punto) 2.9))
		(list (- (car punto) 2.6) (- (cadr punto) 54))
		(list (- (car punto) 4) (- (cadr punto) 54))
		"")
	(command "line"
		(list (- (car punto) 3.8) (- (cadr punto) 53.2))
		(list (- (car punto) 2.6) (- (cadr punto) 54))
		(list (- (car punto) 3.8) (- (cadr punto) 54.8))
		"")
	(command "_.MTEXT" (list (- (car punto) 1.8) (- (cadr punto) 2.7))
		"_Rotation" 90
		"_Justify" "ML"
		"_Height" 0.5
		"_none" "@" (strcat "K" (itoa orden)) "")
	(command "_.MTEXT" (list (- (car punto) 1.8) (- (cadr punto) 3.1))
		"_Rotation" 90
		"_Justify" "MR"
		"_Height" 0.5
		"_none" "@" texto "")
	;pequeñas letras
	(command "_.MTEXT" (list (- (car punto) 3.9) (- (cadr punto) 54.8))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "A" "")
	(command "_.MTEXT" (list (- (car punto) 4.1) (- (cadr punto) 54))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "O" "")
	(command "_.MTEXT" (list (- (car punto) 3.9) (- (cadr punto) 53.2))
		"_Justify" "MR"
		"_Height" 0.4
		"_none" "@" "M" "")
	write (list (car punto) (- (cadr punto) 4))
)


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


;--llamada----
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


;----llamada---
;Empaca la info para las conexiones
(defun cRep (lista punto premier / retorno)
	(foreach cause premier
		(if (= retorno nil)
			(setq retorno (list (list (car cause) (cadr cause) (caddr cause) punto)))
			(setq retorno (append retorno (list (list (car cause) (cadr cause) (caddr cause) punto))))
		)
	)
	(foreach item lista
		(setq retorno (append retorno (list (list (car item) (cadr item) (caddr item) punto))))
	)
	write retorno
)


;---llamada----
(defun crownCase1 (punto)
	(command "line"
		punto
		(list (car punto) (+ (cadr punto) 4.5))
		(list (- (car punto) 0.4) (+ (cadr punto) 5.3))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 1))
		(list (+ (car punto) 0.3) (+ (cadr punto) 1))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 1.35))
		(list (+ (car punto) 0.3) (+ (cadr punto) 0.65))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (+ (cadr punto) 1.35))
		(list (+ (car punto) 0.4) (+ (cadr punto) 0.65))
		"")
	(command "line"
		(list (+ (car punto) 0.4) (+ (cadr punto) 1))
		(list (+ (car punto) 0.65) (+ (cadr punto) 1))
		"")
	(command "arc"
		(list (+ (car punto) 0.9) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.65) (+ (cadr punto) 1))
		(list (+ (car punto) 0.9) (+ (cadr punto) 0.7))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 0.6))
		(list (- (car punto) 0.9) (+ (cadr punto) 1))
		(list (- (car punto) 1.1) (+ (cadr punto) 1))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 1.15))
		(list (- (car punto) 1.3) (+ (cadr punto) 0.85))
		"")
	(command "line"
		(list (- (car punto) 1.2) (+ (cadr punto) 1.2))
		(list (- (car punto) 1.2) (+ (cadr punto) 0.8))
		"")
	(command "line"
		(list (- (car punto) 1.1) (+ (cadr punto) 1.25))
		(list (- (car punto) 1.1) (+ (cadr punto) 0.75))
		"")
	(command "rectang"
		(list (+ (car punto) 0.35) (+ (cadr punto) 2))
		(list (- (car punto) 0.35) (+ (cadr punto) 3.5))
		"")
	(command "line"
		(list (+ (car punto) 0.35) (+ (cadr punto) 2.75))
		(list (+ (car punto) 0.7) (+ (cadr punto) 2.75))
		(list (+ (car punto) 0.7) (+ (cadr punto) 4.9))
		(list (- (car punto) 0.2) (+ (cadr punto) 4.9))
		"")
	(command "circle"
		(list (car punto) (+ (cadr punto) 5.3))
		0.1
		"")
	(command "line"
		(list (- (car punto) 0.2) (+ (cadr punto) 5.4))
		(list (+ (car punto) 0.2) (+ (cadr punto) 5.4))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 5.4))
		(list (car punto) (+ (cadr punto) 5.8))
		"")
	(command "line"
		(list (- (car punto) 1.5) (+ (cadr punto) 5.8))
		(list (+ (car punto) 1.5) (+ (cadr punto) 5.8))
		"")
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 3.6))
		(list (- (car punto) 0.9) (+ (cadr punto) 4))
		(list (- (car punto) 1.1) (+ (cadr punto) 4))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 4.15))
		(list (- (car punto) 1.3) (+ (cadr punto) 3.85))
		"")
	(command "line"
		(list (- (car punto) 1.2) (+ (cadr punto) 4.2))
		(list (- (car punto) 1.2) (+ (cadr punto) 3.8))
		"")
	(command "line"
		(list (- (car punto) 1.1) (+ (cadr punto) 4.25))
		(list (- (car punto) 1.1) (+ (cadr punto) 3.75))
		"")
	(command "line"
		(list (- (car punto) 0.5) (+ (cadr punto) 3.8))
		(list (- (car punto) 0.5) (+ (cadr punto) 0.8))
		"")
	;lineas random
	(command "line"
		(list (- (car punto) 0.1) (+ (cadr punto) 4))
		(list (car punto) (+ (cadr punto) 4))
		"")
	(command "line"
		(list (+ (car punto) 1.35) (+ (cadr punto) 4.7))
		(list (+ (car punto) 1.35) (+ (cadr punto) 4.4))
		"")
)


;-----llamada-----
(defun crownCase2 (punto / pivot)
	(command "line"
		(list (- (car punto) 3) (cadr punto))
		punto
		(list (car punto) (+ (cadr punto) 7.7))
		(list (- (car punto) 3) (+ (cadr punto) 7.7))
		"")
	(borderSquare (list (- (car punto) 1.5) (+ (cadr punto) 1)) 1)
	(command "ellipse"
		(list (- (car punto) 1.5) (+ (cadr punto) 0.4))
		(list (- (car punto) 1.5) (+ (cadr punto) 0.6))
		(list (- (car punto) 1.7) (+ (cadr punto) 0.4))
		"")

	(command "line"
		(list (- (car punto) 3) (+ (cadr punto) 7.3))
		(list (car punto) (+ (cadr punto) 7.3))
		"")
	(command "line"
		(list (- (car punto) 1.5) (+ (cadr punto) 7.3))
		(list (- (car punto) 1.5) (+ (cadr punto) 6.9))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 6.9))
		(list (- (car punto) 1.7) (+ (cadr punto) 6.9))
		"")
	(setq pivot (list (- (car punto) 1.5) (+ (cadr punto) 1.5)))
	(command "line"
		(list (car pivot) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1))
		"")
	(command "line"
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		"")
	(command "arc"
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 1.3))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 0.7))
		"")
	(command "rectang"
		(list (- (car punto) 0.7) (+ (cadr punto) 3.8))
		(list (- (car punto) 0.2) (+ (cadr punto) 3.3))
		"")
	(command "line"
		(list (- (car punto) 0.45) (+ (cadr punto) 3.3))
		(list (- (car punto) 0.45) (+ (cadr punto) 0.5))
		(list (- (car punto) 1.5) (+ (cadr punto) 0.5))
		"")
	(command ".zoom" "a" "")
	(command "trim"
		(ssget "w" (list (- (car punto) 1.75) (+ (cadr punto) 0.65)) (list (- (car punto) 1.25) (+ (cadr punto) 0.35)))
		"" "_Fence"
		(list (- (car punto) 1.4) (+ (cadr punto) 0.6))
		(list (- (car punto) 1.4) (+ (cadr punto) 0.4))
		"" ""
		)
	(command "_.MTEXT" (list (- (car punto) 0.45) (+ (cadr punto) 3.55))
		"_Justify" "MC"
		"_Height" 0.3
		"_none" "@" "R" "")
	(command "line"
		(list (- (car punto) 1.5) (+ (cadr punto) 1.5))
		(list (- (car punto) 1.5) (+ (cadr punto) 4.1))
		(list (- (car punto) 1.1) (+ (cadr punto) 4.9))
		"")
	(command "line"
		(list (- (car punto) 1.3) (+ (cadr punto) 4.5))
		(list (- (car punto) 0.45) (+ (cadr punto) 4.5))
		(list (- (car punto) 0.45) (+ (cadr punto) 3.8))
		"")
	(command "line"
		(list (- (car punto) 1.1) (+ (cadr punto) 6.9))
		(list (- (car punto) 1.5) (+ (cadr punto) 6.1))
		(list (- (car punto) 1.5) (+ (cadr punto) 4.9))
		"")
	(command "line"
		(list (- (car punto) 1.6) (+ (cadr punto) 5))
		(list (- (car punto) 1.4) (+ (cadr punto) 4.8))
		"")
	(command "line"
		(list (- (car punto) 1.4) (+ (cadr punto) 5))
		(list (- (car punto) 1.6) (+ (cadr punto) 4.8))
		"")
	(command "line"
		(list (- (car punto) 0.2) (+ (cadr punto) 6.3))
		(list (- (car punto) 0.2) (+ (cadr punto) 5.9))
		"")
	(command "line"
		(list (- (car punto) 0.3) (+ (cadr punto) 6.35))
		(list (- (car punto) 0.3) (+ (cadr punto) 5.85))
		"")
	(command "line"
		(list (- (car punto) 0.4) (+ (cadr punto) 6.4))
		(list (- (car punto) 0.4) (+ (cadr punto) 5.8))
		"")
	(command "line"
		(list (- (car punto) 0.4) (+ (cadr punto) 6.1))
		(list (- (car punto) 0.6) (+ (cadr punto) 6.1))
		"")
)


;---lamada---
(defun crownLeft (punto / pivot)
	(command "line"
		(list (- (car punto) 2.5) (cadr punto))
		punto
		(list (car punto) (+ (cadr punto) 7.7))
		(list (- (car punto) 2.5) (+ (cadr punto) 7.7))
		"")
	(setq pivot (list (- (car punto) 1.25) (+ (cadr punto) 1.5)))
	(command "line"
		(list (car pivot) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1))
		"")
	(command "line"
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.3) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1.35))
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 0.65))
		"")
	(command "line"
		(list (+ (car pivot) 0.4) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		"")
	(command "arc"
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 1.3))
		(list (+ (car pivot) 0.65) (+ (cadr pivot) 1))
		(list (+ (car pivot) 0.9) (+ (cadr pivot) 0.7))
		"")
	(borderSquare (list (+ (car pivot) 1) (+ (cadr pivot) 5.8)) 0)
	(command "line"
		(list (+ (car pivot) 0.6) (+ (cadr pivot) 5.8))
		(list (car pivot) (+ (cadr pivot) 5.8))
		(list (car pivot) (- (cadr pivot) 3))
		"")
)


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
(defun data()
	write
	(list
		(list 
			(list 
				(list (list 899 0)  "3 x 80 A\n16 kA")
			)
			(list "TG")
			(list
				(list "inicir" "C-1")
				(list "int" "10 kA" "3 x 32 A")
				(list "linea" "3 - 1x10.0 mm2 N2XOH  +1x10.0 mm2 N2XOH(N)  PVC   35 mm" "")
				(list "conex" (list 900 0))
				(list "inicir" "C-2")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TD-1" "1ER PISO")
				(list "inicir" "C-3")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TD-2" "1ER PISO")
				(list "inicir" "C-4")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TD-3" "1ER PISO")
				(list "inicir" "C-5")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TD-4" "1ER PISO")
				(list "inicir" "C-6")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "conex" (list 923 0))
				(list "inicir" "C-7")
				(list "int" "6 kA" "2 x 16 A")
				(list "linea" "2 - 1x6.0 mm2 N2XOH  DUCTO , PVC   20 mm" "")
				(list "tabS" "TD-6" "1ER PISO")
				(list "inicir" "C-8")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TB" "1ER PISO")
				(list "inicir" "C-9")
				(list "int" "10 kA" "3 x 40 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  PVC   25 mm" "")
				(list "tabS" "TD-PD" "1ER PISO")
				(list "inicir" "C-10")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x2.5 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "ALUMBRADO")
				(list "inicir" "C-11")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "con")
				(list "linea" "2 - 1x10.0 mm2 N2XOH  +1x4.0 mm2 N2XOH(T)  PVC   35 mm" "")
				(list "ending" "ALUMBRADO EXTERIOR")
				(list "inicir" "C-12")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "con")
				(list "linea" "2 - 1x10.0 mm2 N2XOH  +1x4.0 mm2 N2XOH(T)  PVC   35 mm" "")
				(list "ending" "ALUMBRADO EXTERIOR")
				(list "inicir" "C-13")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x2.5 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "AIRE ACONDICIONADO")
				(list "inicir" "C-14")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "con")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  DUCTO , PVC   20 mm" "")
				(list "ending" "CAMPANILLA DE TIMBRE")
				(list "inicir" "C-15")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "TOMACORRIENTES")
				(list "cage" "P.I.=41.86KW\nM.D.=37.67KW\nIP 55" "Gabinete de 128 polos")
			)
		)
		(list 
			(list 
				(list (list 900 0)  "3 x 30 A\n10 kA")
			)
			(list "TESTG")
			(list
				(list "inicir" "C-1")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TES-1" "1ER PISO")
				(list "inicir" "C-2")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TES-2" "1ER PISO")
				(list "inicir" "C-3")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TES-3" "1ER PISO")
				(list "inicir" "C-4")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "tabS" "TES-4" "1ER PISO")
				(list "inicir" "C-5")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  DUCTO , PVC   25 mm" "")
				(list "conex" (list 924 0))
				(list "cage" "P.I.=12.76KW\nM.D.=12.76KW\nIP 55" "Gabinete de 34 polos")
			)
		)
		(list 
			(list 
				(list (list 924 0)  "3 x 16 A\n10 kA")
			)
			(list "TES-5")
			(list
				(list "inicir" "C-1")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "TOMACORRIENTES ESTB.")
				(list "inicir" "C-2")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "TOMACORRIENTES ESTB.")
				(list "inicir" "C-3")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  +1x10.0 mm2 N2XOH(T)  PVC   35 mm" "")
				(list "tabS" "STES-5" "2DO PISO")
				(list "cage" "P.I.=8.23KW\nM.D.=7.4KW\nIP 40" "Gabinete de 26 polos")
			)
		)
		(list 
			(list 
				(list (list 923 0)  "3 x 16 A\n10 kA")
			)
			(list "TD-5")
			(list
				(list "inicir" "C-1")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x2.5 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "ALUMBRADO")
				(list "inicir" "C-2")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x2.5 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "ALUMBRADO")
				(list "inicir" "C-3")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x2.5 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "ALUMBRADO")
				(list "inicir" "C-4")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "TOMACORRIENTES")
				(list "inicir" "C-5")
				(list "int" "6 kA" "2 x 16 A")
				(list "dif" "6 kA" "2 x 25 A")
				(list "linea" "2 - 1x4.0 mm2 NH-80  +1x2.5 mm2 NH-80(T)  PVC   20 mm" "")
				(list "ending" "TOMACORRIENTES")
				(list "inicir" "C-6")
				(list "int" "10 kA" "3 x 16 A")
				(list "linea" "3 - 1x6.0 mm2 N2XOH  +1x6.0 mm2 N2XOH(N)  +1x10.0 mm2 N2XOH(T)  PVC   35 mm" "")
				(list "tabS" "STD-5" "2DO PISO")
				(list "cage" "P.I.=5.28KW\nM.D.=4.75KW\nIP 40" "Gabinete de 50 polos")
			)
		)
	)
)
(defun cData()
	write
	(list
		(list "int" "QC1\n16A")
		(list "mint" "KC1\n9A")
		(list "end" "C1\n2.5KVAR")
		(list "mint" "KC2\n9A")
		(list "end" "C2\n2.5KVAR")
		(list "int" "QC2\n16A")
		(list "mint" "KC3\n9A")
		(list "end" "C3\n2.5KVAR")
	)
)
(defun dataCrown()
	write (list (list 899 0) "3 - 1x10.0 mm2 N2XOH  +1x10.0 mm2 N2XOH(N)  PVC \n 35 mm")
)


;-------llamada---------
;funcion para desfasar la caja, es el espacio entre los tableros
(defun DesfasarCaja (punto data / counter)
	(setq counter -1.0)
	(foreach item data
		(if (= (car item) "inicir")
			(setq counter (+ counter 1.0))
		)
	)
	(setq counter (/ (* counter 5) 2))
	(if (>= counter 21)
		(setq counter 0.0)
		(setq counter (- 21.0 counter))
	)
	(setq counter (+ 21.0 counter))
	write (+ counter (car punto))
)


;-------llamada----
(defun diferencial (punto texto1 texto2)
	(setvar "CLAYER" "Ambar")
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 1))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 0.7))
		(list (+ (car punto) 0.3) (- (cadr punto) 1.3))
		"")
	(command "line"
		(list (- (car punto) 0.3) (- (cadr punto) 1.3))
		(list (+ (car punto) 0.3) (- (cadr punto) 0.7))
		"")
	(command "line"
		(list (- (car punto) 0.8) (- (cadr punto) 1))
		(list (- (car punto) 0) (- (cadr punto) 2))
		"")
	(command "line"
		(list (- (car punto) 0.4) (- (cadr punto) 1.5))
		(list (- (car punto) 1.6) (- (cadr punto) 1.5))
		"")
	(command "line"
		(list (- (car punto) 1.6) (- (cadr punto) 1.2))
		(list (- (car punto) 1.6) (- (cadr punto) 1.8))
		"")
	(command "rectang"
		(list (- (car punto) 1.35) (- (cadr punto) 1.35))
		(list (- (car punto) 0.95) (- (cadr punto) 1.65))
		"")
	(command "line"
		(list (- (car punto) 1.15) (- (cadr punto) 1.2))
		(list (- (car punto) 1.15) (- (cadr punto) 3))
		(list (- (car punto) 0.5) (- (cadr punto) 3))
		"")
	(command "ellipse"
		(list (- (car punto) 0.5) (- (cadr punto) 3))
		(list (+ (car punto) 0.1) (- (cadr punto) 3))
		0.2
		"")
	(setvar "CLAYER" "Default")
	(command "_.MTEXT" (list (- (car punto) 1.7) (- (cadr punto) 1.75))
		"_Rotation" 90
		"_Justify" "BC" 
		"_Height" 0.5
		"_none" "@" "30mA" "")
	(command "_.MTEXT" (list (+ (car punto) 0.4) (- (cadr punto) 1.75))
		"_Rotation" 90
		"_Justify" "TC" 
		"_Height" 0.5
		"_none" "@" "4x25A" "")
	(setvar "CLAYER" "Verde")
	(command "line"
		(list (- (car punto) 0) (- (cadr punto) 2))
		(list (- (car punto) 0) (- (cadr punto) 3.5))
		"")
	write (list (- (car punto) 0) (- (cadr punto) 3.5))
)


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


;---llamada---
(defun electrogeno (DataColec / dataElec flag f1 f2)
	(setq dataElec (eData))
	(foreach item2 dataElec
		(setq flag nil)
		(setq f1 (car item2))
		(setq f2 (cadr item2))
		(foreach mini f1
			(foreach item DataColec
				(if (= (cadr item) 1)
					(if (and (= (car (caddr item)) (car mini)) (= (cadr (caddr item)) (cadr mini)))
						(progn
							(Eline (caddr mini) (cadddr mini) (car item))
							(if (= flag nil)
								(EIterar f2 (list (car (car item)) (+ (cadr (car item)) 40)))
								(command "line"
									flag
									(list (car (car item)) (+ (cadr (car item)) 40))
									"")
							)
							(setq flag (list (car (car item)) (+ (cadr (car item)) 40)))
						)
					)
				)
			)
		)
	)
)


;--llamada---
(defun Eline (texto1 texto2 punto)
	(command "line"
		punto
		(list (car punto) (+ (cadr punto) 40))
		"")
	(command "_.MTEXT" (list (- (car punto) 0.2) (+ (cadr punto) 20))
		"_Justify" "BC"
		"_Height" 0.5
		"_Rotation" 90
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 1) (+ (cadr punto) 20))
		"_Justify" "BC"
		"_Height" 0.5
		"_Rotation" 90
		"_none" "@" texto2 "")
)


;---llamada---
(defun encerrar (p1 p2 texto)
	(setvar "CLAYER" "Contorno")
	(command "rectang"
		(list (- (car p1) 3) (+ (cadr p2) 15))
		(list (+ (car p2) 7) (- (cadr p2) 20))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car p2) 6.5) (- (cadr p2) 19.5))
		"_Rotation" 90
		"_Justify" "BL"
		"_Height" 1.2
		"_none" "@" texto "")
	write (list (- (car p1) 4.5) (+ (car p2) 8.5))
)


;-------lamada-------
(defun general(punto dato id infoD / pini pfin pivot clista palto caja contador idList corX)
	(setq contador 1)
	(setq pini punto)
	(foreach orden dato
		(if (= (car orden) "cage");en el data debe estar al final
			(setq caja (PonerCaja punto dato (list (cadr orden) (caddr orden))))
		)
		(if (= (car orden) "inicir")
			(progn
				(if (= pfin nil)
					(progn
						(setq pfin pini)
						(setq pivot pfin)
					)
					(progn 
						(setq pfin (list (+ (car pfin) 5) (cadr pfin)))
						(setq pivot pfin)
					)
				)
				(setq pivot (IniCir pivot (cadr orden)))
			)
		)
		(if (= (car orden) "ending")
			(progn
				(setvar "CLAYER" "Celeste")
				(command "_.MTEXT" (list (car pivot) (- (cadr pivot) 1.0))
							"_Justify" "MR" 
							"_Rotation" 90
							"_Height" 0.8 
							"_none" "@" (cadr orden) "")
			)
		)
		(if (= (car orden) "int")
			(setq pivot (interruptor pivot (cadr orden) (caddr orden)))
		)
		(if (= (car orden) "dif")
			(setq pivot (diferencial pivot (cadr orden) (caddr orden) (cadddr orden)))
		)
		(if (= (car orden) "con")
			(setq pivot (contactor pivot))
		)
		(if (= (car orden) "conm")
			(progn 
				(setq pivot (conmutador pivot contador (cadr orden)))
				(setq contador (+ contador 1))
			)
		)
		(if (= (car orden) "reloj")
			(setq pivot (reloj pivot))
		)
		(if (= (car orden) "linea")
			(setq pivot (lineaG pivot pfin (cadr orden) (caddr orden)))
		)
		(if (= (car orden) "tabS")
			(ultiTab pivot (cadr orden) (caddr orden))
		)
		(if (= (car orden) "conex")
			(progn
				(if (= clista nil)
					(setq clista (list (list pivot 0 (cadr orden) nil)))
					(setq clista (append clista (list (list pivot 0 (cadr orden) nil))))
				)
			)
		)
	)
	(setvar "CLAYER" "Cables")
	(command "line"
		pini
		pfin
		"")
	(command "line"
		(list (+ (car pini) (/ (- (car pfin) (car pini)) 2)) (cadr pfin))
		(list (+ (car pini) (/ (- (car pfin) (car pini)) 2)) (+ (cadr pfin) 8))
		"")
	(if (= (length id) 1)
		(progn
			(setq palto (medidorm (list (+ (car pini) (/ (- (car pfin) (car pini)) 2)) (+ (cadr pfin) 8)) (cadr (car id))))
			(setq idList (list (list palto 1 (car (car id)))))
		)
		(progn
			(setq palto (transferUp (list (+ (car pini) (/ (- (car pfin) (car pini)) 2)) (+ (cadr pfin) 8)) id))
			(setq idList 
				(list 
					(list (car palto) 1 (car (car id)))
					(list (cadr palto) 1 (car (cadr id)))
				)
			)
		)
	)
	(if (/= caja nil)
		(setq corX (encerrar caja pfin (car infoD)))
		(setq corX (encerrar pini pfin (car infoD)))
	)
	(setq clista (cRep clista corX idList))
	write (list pfin clista)
)



;---llamada----
;funciones generales
(defun IniCir(punto texto)
	(setvar "CLAYER" "Cables")
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car punto) 0.1) (- (cadr punto) 0.1)) "_Justify" "TL" "_Height" 0.6 "_none" "@" texto "")
	write (list (car punto) (- (cadr punto) 2))
)


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


;--llamada---
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


;-----llamada-----
(defun lineaG (punto puntoI texto1 texto2)
	(setvar "CLAYER" "Verde")
	(command "line"
		punto
		(list (car puntoI) (- (cadr puntoI) 47.2))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 0.1) (- (cadr punto) 1))
		"_Rotation" 90
		"_Justify" "BR" 
		"_Height" 0.6 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 0.1) (- (cadr punto) 1))
		"_Rotation" 90
		"_Justify" "TR" 
		"_Height" 0.6 
		"_none" "@" texto2 "")
	write (list (car puntoI) (- (cadr puntoI) 47.2))
)


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


;---llamada---
;funcion para poner la caja aca se puso el gabinete tambien
(defun PonerCaja (punto dato texto / counter pCaja)
	(setq counter -1.0)
	(foreach item dato
		(if (= (car item) "inicir")
			(setq counter (+ counter 1.0))
		)
	)
	(setq counter (+ (car punto) (/ (* counter 5) 2)))
	(if (< (- counter (car punto)) 21)
		(progn 
			(setq pCaja (list (- counter 21) (+ (cadr punto) 12.5)))
		)
		(setq pCaja (list (- (car punto) 1) (+ (cadr punto) 14)))
	)
	(setvar "CLAYER" "Contorno")
	(command "rectang"
		pCaja
		(list (+ (car pCaja) 7) (- (cadr pCaja) 3.6))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (+ (car pCaja) 0.4) (- (cadr pCaja) 1.8))
		"_Justify" "ML" 
		"_Height" 0.6 
		"_none" "@" (car texto) "")
	(command "_.MTEXT" (list (+ (car pCaja) 0.4) (- (cadr pCaja) 4.3))
		"_Justify" "ML" 
		"_Height" 0.6 
		"_none" "@" (cadr texto) "")
	write pCaja
)


;-----llamada-----
(defun reloj (punto)
	(command "line"
		punto
		(list (car punto) (- (cadr punto) 2))
		(list (- (car punto) 0.8) (- (cadr punto) 2))
		"")
	(command "line"
		(list (- (car punto) 1.3) (cadr punto))
		(list (- (car punto) 1.3) (- (cadr punto) 0.5))
		"")
	(command "rectang"
		(list (- (car punto) 0.8) (- (cadr punto) 0.5))
		(list (- (car punto) 2) (- (cadr punto) 3.5))
		"")
	(command "line"
		(list (- (car punto) 1.4) (- (cadr punto) 2))
		(list (- (car punto) 1.4) (- (cadr punto) 2.7))
		"")
	(command "line"
		(list (- (car punto) 1.0) (- (cadr punto) 2.7))
		(list (- (car punto) 1.4) (- (cadr punto) 3.1))
		"")
	(command "circle"
		(list (- (car punto) 1.4) (- (cadr punto) 1.2))
		0.4
		"")
	(command "line"
		(list (- (car punto) 1.7) (- (cadr punto) 1.2))
		(list (- (car punto) 1.4) (- (cadr punto) 1.2))
		(list (- (car punto) 1.4) (- (cadr punto) 0.9))
		"")
	write (list (car punto) (- (cadr punto) 2))
)


;------llamada---

(defun transferInt (punto)
	(command "arc"
		(list (car punto) (cadr punto))
		(list (+ (car punto) 0.6) (+ (cadr punto) 0.65))
		(list (car punto) (+ (cadr punto) 1.3))
		"")
	(command "line"
		(list (car punto) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.6) (+ (cadr punto) 1.3))
		(list (+ (car punto) 0.6) (+ (cadr punto) 2.3))
		(list (car punto) (+ (cadr punto) 2.3))
		(list (+ (car punto) 1) (+ (cadr punto) 3.8))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 4.3))
		(list (- (car punto) 0.3) (+ (cadr punto) 3.7))
		"")
	(command "line"
		(list (+ (car punto) 0.3) (+ (cadr punto) 3.7))
		(list (- (car punto) 0.3) (+ (cadr punto) 4.3))
		"")
)


;----llamada--
;dibuja la transferencia en la parte de arriba del tablero
(defun transferUp (punto texto)
	(command "line"
		(list (- (car punto) 2) (+ (cadr punto) 1.5))
		(list (- (car punto) 2) (cadr punto))
		(list (+ (car punto) 2) (cadr punto))
		(list (+ (car punto) 2) (+ (cadr punto) 1.5))
		"")
	(transferInt (list (- (car punto) 2) (+ (cadr punto) 1.5)))
	(transferInt (list (+ (car punto) 2) (+ (cadr punto) 1.5)))
	(command "_.MTEXT" (list (- (car punto) 2.4) (+ (cadr punto) 2.1))
		"_Justify" "BR"
		"_Height" 0.5
		"_none" "@" (cadr (car texto)) "")
	(command "_.MTEXT" (list (+ (car punto) 3) (+ (cadr punto) 2.1))
		"_Justify" "BL"
		"_Height" 0.5
		"_none" "@" (cadr (cadr texto)) "")
	;linea del centro
	(command "line"
		(list (- (car punto) 2) (+ (cadr punto) 4.55))
		(list (+ (car punto) 3.5) (+ (cadr punto) 4.55))
		"")
	(command "pline"
		(list (+ (car punto) 0.1) (+ (cadr punto) 4.55))
		(list (+ (car punto) 0.3) (+ (cadr punto) 4.85))
		(list (- (car punto) 0.1) (+ (cadr punto) 4.85))
		"c"
		"")
	(command "_.MTEXT" (list (- (car punto) 2.4) (+ (cadr punto) 4.55))
		"_Justify" "BR"
		"_Height" 0.3
		"_none" "@" "N" "")
	(command "_.MTEXT" (list (+ (car punto) 3.7) (+ (cadr punto) 4.55))
		"_Justify" "BL"
		"_Height" 0.3
		"_none" "@" "E" "")
	write (list 
			(list (- (car punto) 2) (+ (cadr punto) 5.5))
			(list (+ (car punto) 2) (+ (cadr punto) 5.5))
			)
)


;-----llamada-----
(defun ultiTab(punto texto1 texto2)
	(setvar "CLAYER" "AzulA")
	(command "rectang"
		(list (- (car punto) 0.75) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.75) (+ (cadr punto) 0))
		"")
	(command "line"
		(list (- (car punto) 0.75) (- (cadr punto) 2.5))
		(list (+ (car punto) 0.75) (+ (cadr punto) 0))
		"")
	(setvar "CLAYER" "Celeste")
	(command "_.MTEXT" (list (- (car punto) 0) (- (cadr punto) 2.7))
		"_Rotation" 90
		"_Justify" "MR" 
		"_Height" 0.8 
		"_none" "@" texto1 "")
	(command "_.MTEXT" (list (+ (car punto) 0.5) (- (cadr punto) 2.7))
		"_Rotation" 90 
		"_Justify" "TR" 
		"_Height" 0.5 
		"_none" "@" texto2 "")
)
(defun c:unigen(/ p1 dataF conecVol conecData firstPoint)
	(setq p1 (getpoint "\nPrimer punto"))
	(command "osmode" 0)
	(Layers)
	(setq dataF (data))
	(foreach orden dataF
		(if (= firstPoint nil)
			(setq firstPoint p1)
			(setq p1 (list (DesfasarCaja (car conecVol) (caddr orden)) (cadr (car conecVol))))
		)
		(setq conecVol (general p1 (caddr orden) (car orden) (cadr orden)))
		(if (/= (cadr conecVol) nil)
			(if (= conecData nil)
				(setq conecData (cadr conecVol))
				(setq conecData (append conecData (cadr conecVol)))
			)
		)
	)
	(conexiones conecData)
	(if (/= (cData) nil)
		(condensadores firstPoint (caddr (car dataF)))
	)
	(if (/= (eData) nil)
		(electrogeno conecData)
	)
)

