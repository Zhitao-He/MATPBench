theory Geometry_Theorem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt ((px A - px B)^2 + (py A - py B)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = ((px B - px A) * (py C - py A) = (py B - py A) * (px C - px A))"
definition on_circle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "on_circle P A B C = (∃O. dist O A = dist O B ∧ dist O B = dist O C ∧ dist O C = dist O P)"
theorem geometry_BG_over_CG_eq_BD_over_CD:
  fixes A B C D E F G :: point
  assumes "A ≠ B" "A ≠ C" "A ≠ D" "B ≠ C" "B ≠ D" "C ≠ D" 
    and "dist A B = dist A C" 
    and "collinear A C F" "F ≠ A" 
    and "on_circle E A C D" 
    and "collinear A B E" "E ≠ A" 
    and "∃t1. 0 < t1 ∧ t1 < 1 ∧ px G = (1 - t1) * px B + t1 * px F ∧ py G = (1 - t1) * py B + t1 * py F" 
    and "∃t2. 0 < t2 ∧ t2 < 1 ∧ px G = (1 - t2) * px C + t2 * px E ∧ py G = (1 - t2) * py C + t2 * py E" 
    and "¬ collinear B C D" 
  shows "dist B G / dist C G = dist B D / dist C D"
  sorry