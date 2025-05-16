theory TriangleMidpointsArea
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B)/2, (snd A + snd B)/2)"
definition cross_product :: "point ⇒ point ⇒ real" where
  "cross_product v w = fst v * snd w - snd v * fst w"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = 
    abs(cross_product (fst B - fst A, snd B - snd A) (fst C - fst A, snd C - snd A)) / 2"
theorem triangle_midpoints_area:
  fixes A B C :: point
  assumes "triangle_area A B C = 4"
  defines "D ≡ midpoint B C"
  defines "E ≡ midpoint A D"
  defines "F ≡ midpoint C E"
  shows "triangle_area D E F = 0.5"
  oops 