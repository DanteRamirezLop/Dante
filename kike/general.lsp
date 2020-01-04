(defun c:unigen (/ punto)
	(setq punto (getpoint "punto"))
	(general punto "Hola")
)
;-------lamada-------
(defun general(punto dato id infoD / pini pfin pivot clista palto caja contador idList corX)
	(setq contador 1)
	(setq pini punto)
	(foreach orden dato
		(if (= (car orden) "cage")
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
			(setq pivot (diferencial pivot (cadr orden) (caddr orden)))
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

