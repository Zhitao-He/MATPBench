theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - fst p)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B = 
    (let vA = vec O A; vB = vec O B in
     atan2 (fst vB * snd vA - snd vB * fst vA) (fst vA * fst vB + snd vA * snd vB))"
definition deg :: "real ⇒ real" where
  "deg rad = rad * 180 / pi"
definition rad :: "real ⇒ real" where
  "rad deg = deg * pi / 180"
axiomatization where
  angle_ADG: "deg(angle A D G) = 36" and
  angle_AGF: "deg(angle A G F) = 104" and
  angle_EFC: "deg(angle E F C) = 40" and
  AB_perp_CB: "fst(vec C B) * fst(vec A B) + snd(vec C B) * snd(vec A B) = 0"
theorem angle_BCF: "deg(angle B C F) = 14"
  sorry