theory KiteAreaProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale kite_problem =
  fixes B D F O E :: "real^2"
  assumes BD_length: "dist B D = 7"
  and FE_length: "dist F E = 6" 
  and OE_length: "dist O E = 9"
  and kite_FBOD: "is_kite F B O D"
definition is_kite :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "is_kite A B C D ⟷ dist A B = dist A D ∧ dist C B = dist C D"
lemma kite_area:
  assumes "is_kite A B C D"
  shows "area_quadrilateral A B C D = (dist B D * dist A C) / 2"
  sorry 
theorem area_of_FBOD:
  shows "area_quadrilateral F B O D = 105/2"
proof -
  have "area_quadrilateral F B O D = (dist B D * dist F O) / 2"
    using kite_FBOD kite_area by simp
  thus "area_quadrilateral F B O D = 105/2"
    using BD_length ‹dist F O = 15› by simp
qed