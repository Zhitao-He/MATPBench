theory Geometry_Problem_Formalization
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" (infix "on_segment" 55) where
  "p on_segment x y ⟷ (∃t::real. 0 ≤ t ∧ t ≤ 1 ∧ p = (1-t)⇩R *⇩<sub>R</sub> x +⇩<sub>R</sub> t⇩R *⇩<sub>R</sub> y)"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle p1 p2 p3 =
     0.5 * abs( (vec_nth (p2 -⇩<sub>R</sub> p1) 0) * (vec_nth (p3 -⇩<sub>R</sub> p1) 1) -
                 (vec_nth (p2 -⇩<sub>R</sub> p1) 1) * (vec_nth (p3 -⇩<sub>R</sub> p1) 0) )"
definition strictly_inside_triangle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" (infix "strictly_inside_triangle" 55) where
  "pt strictly_inside_triangle v1 v2 v3 ⟷
    (∃a b c::real. a > 0 ∧ b > 0 ∧ c > 0 ∧ a + b + c = (1::real) ∧
      pt = a⇩R *⇩<sub>R</sub> v1 +⇩<sub>R</sub> b⇩R *⇩<sub>R</sub> v2 +⇩<sub>R</sub> c⇩R *⇩<sub>R</sub> v3)"
lemma Ceva_Problem_P_Inside_Triangle:
  fixes A B C P D E F :: point 
  assumes
    D_on_BC_strict: "D on_segment B C ∧ D ≠ B ∧ D ≠ C" and
    E_on_AC_strict: "E on_segment A C ∧ E ≠ A ∧ E ≠ C" and
    F_on_AB_strict: "F on_segment A B ∧ F ≠ A ∧ F ≠ B" and
    P_on_AD: "P on_segment A D" and
    P_on_BE: "P on_segment B E" and
    P_on_CF: "P on_segment C F" and
    len_AP: "dist A P = 6" and
    len_BP: "dist B P = 9" and
    len_PD: "dist P D = 6" and
    len_PE: "dist P E = 3" and
    len_CF: "dist C F = 20" and
    Area_ABC: "area_triangle A B C = 108"
  shows "P strictly_inside_triangle A B C"
  sorry 
end