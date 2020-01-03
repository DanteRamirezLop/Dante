(defun c:Layers())
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
