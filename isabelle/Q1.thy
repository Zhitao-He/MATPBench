theory TriangleAngleBisector
imports
  Main
  "HOL-Analysis.Analysis"
  "HOL-Algebra.Algebra"
begin
locale triangle_geometry =
  fixes A B C O :: "real × real"
  assumes triangle_ABC: "¬ collinear {A, B, C}"
  and O_on_angle_bisector_B: "is_angle_bisector B A C O"
  and O_on_angle_bisector_C: "is_angle_bisector C A B O"
  and angle_A: "angle B A C = 110 * pi / 180"
definition collinear :: "(real × real) set ⇒ bool" where
  "collinear ps ⟷ (∃l. ∀p∈ps. is_on_line p l)"
definition is_on_line :: "(real × real) ⇒ ((real × real) × (real × real)) ⇒ bool" where
  "is_on_line p l ⟷ (∃t. p = fst l + t *# (snd l - fst l))"
definition scal_mult :: "real ⇒ (real × real) ⇒ (real × real)" (infixr "*#" 75) where
  "r *# p = (r * fst p, r * snd p)"
definition vec_add :: "(real × real) ⇒ (real × real) ⇒ (real × real)" (infixl "+#" 65) where
  "p +# q = (fst p + fst q, snd p + snd q)"
definition vec_sub :: "(real × real) ⇒ (real × real) ⇒ (real × real)" (infixl "-#" 65) where
  "p -# q = (fst p - fst q, snd p - snd q)"
definition dot_product :: "(real × real) ⇒ (real × real) ⇒ real" (infixl "·" 70) where
  "p · q = fst p * fst q + snd p * snd q"
definition norm :: "(real × real) ⇒ real" where
  "norm p = sqrt (p · p)"
definition normalize :: "(real × real) ⇒ (real × real)" where
  "normalize p = (1 / norm p) *# p"
definition angle :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "angle A B C = 
    (if A = B ∨ C = B then 0
     else acos (((A -# B) · (C -# B)) / (norm (A -# B) * norm (C -# B))))"
definition is_angle_bisector :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ (real × real) ⇒ bool" where
  "is_angle_bisector V A B P ⟷ 
    (∃t > 0. P = V + t *# (normalize (A -# V) + normalize (B -# V)))"
theorem triangle_bisectors_angle_BOC:
  assumes "triangle_geometry A B C O"
  shows "angle O B C = 145 * pi / 180"
  sorry
