theory TrapezoidArea
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition trapezoid_area :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "trapezoid_area A B C D = 
   let h = distance A D * sin(angle A D O) in
   (distance A B + distance D C) * h / 2"
definition point_to_line_distance :: "point ⇒ point ⇒ point ⇒ real" where
  "point_to_line_distance P A B = 
   abs(det [[fst B - fst A, snd B - snd A], [fst P - fst A, snd P - snd A]]) / 
   distance A B"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D ⟷ 
   (fst B - fst A) * (fst D - fst C) + (snd B - snd A) * (snd D - snd C) = 0"
locale trapezoid_problem =
  fixes A B C D O P :: point
  assumes dist_AD: "distance A D = 10"
  and dist_AO: "distance A O = 10" 
  and dist_OB: "distance O B = 10"
  and dist_BC: "distance B C = 10"
  and dist_AB: "distance A B = 12"
  and dist_DO: "distance D O = 12"
  and dist_OC: "distance O C = 12"
  and P_on_AB: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ P = (fst A + t * (fst B - fst A), snd A + t * (snd B - snd A))"
  and OP_perp_AB: "perpendicular O P A B"
  and trapezoid_form: "∃k. D = (fst A, snd A + k) ∧ C = (fst B, snd B + k) ∧ k > 0"
theorem trapezoid_area_is_144:
  assumes "trapezoid_problem A B C D O P"
  shows "trapezoid_area A B C D = 144"