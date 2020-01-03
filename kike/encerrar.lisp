(defun c:encerrar (p1 p2 texto))
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
