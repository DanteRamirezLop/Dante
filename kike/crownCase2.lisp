(defun c:crownCase2(punto / pivot))
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
