theory TriangleArea
imports Main Complex_Main
begin
type_synonym point = "real × real"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C = 
    abs ((fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A)) / 2"
theorem triangle_ABC_area_54:
  "let A = (4, 9);
       B = (0, 0);
       C = (12, 0)
   in area_triangle A B C = 54"
  by (simp add: area_triangle_def Let_def)