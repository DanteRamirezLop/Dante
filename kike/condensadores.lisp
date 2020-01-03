(defun c:condensadores(punto1 datos / counter punto2 puntoRele condensadorData nCon))
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
		(if (= (car item) "iniCon")
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
		"_none" "@" "NOTA: Banco de condensadores con reactor desintonizado para evitar armonicos.\nBanco similar al modelo ALPIVAR MS10040.189 de LEGRAND" "")
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
