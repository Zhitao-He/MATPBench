theory Parallelogram_Theorem
imports Main Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "complex"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (∃k l. k * (B - A) + l * (C - A) = 0)"
definition parallelogram :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "parallelogram A B C D ⟷ (B - A = C - D) ∧ (D - A = C - B)"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C ⟷ (∃t. 0 < t ∧ t < 1 ∧ B = (1 - t) * A + t * C)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle P Q R = (let u = P - Q; v = R - Q in 
     vector_angle u v)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle P C r ⟷ (cmod (P - C) = r)"
definition circumcircle :: "point ⇒ point ⇒ point ⇒ point set" where
  "circumcircle A B C = {X. ∃r. on_circle X (circumcenter A B C) r ∧ 
                            on_circle A (circumcenter A B C) r ∧
                            on_circle B (circumcenter A B C) r ∧ 
                            on_circle C (circumcenter A B C) r}"
theorem parallelogram_angle_equality:
  fixes A B C D E F :: point
  assumes "parallelogram A B C D"
      and "between B E D"
      and "angle E C B = angle A C D"
      and "F ≠ A" and "F ≠ C"
      and "collinear A F C"
      and "F ∈ circumcircle A B D"
  shows "angle B F E = angle A F D"
sorry