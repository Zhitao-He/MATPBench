theory GeometryProblem
imports Main HOL.Real_Vector_Spaces Complex_Main
begin
type_synonym point = "real × real"
definition vect :: "point ⇒ point ⇒ real × real" where
  "vect A B = (fst B - fst A, snd B - snd A)"
definition norm :: "real × real ⇒ real" where
  "norm v = sqrt((fst v)^2 + (snd v)^2)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v w = (fst v) * (fst w) + (snd v) * (snd w)"
definition orthogonal :: "real × real ⇒ real × real ⇒ bool" where
  "orthogonal v w ≡ dot_product v w = 0"
theorem value_x_is_36_5:
  fixes A B C D E :: point
  assumes
    "norm (vect A B) = 15"     
    "orthogonal (vect D E) (vect A B)"  
    "orthogonal (vect D B) (vect D E)"  
  shows
    "norm (vect D C) = 36/5"   (* x = DC = 36/5 *)
begin
  sorry