theory AngleCBD
imports Complex_Main
begin
type_synonym point = complex
definition angle :: "point → point → point → real" where
  "angle A B C = (let
     v1 = A - B;
     v2 = C - B
   in
     (atan2 (Im (v1 * cnj v2)) (Re (v1 * cnj v2))) * (180 / pi))"
definition collinear :: "point → point → point → bool" where
  "collinear A B C = (Im ((B - A) * cnj (C - A)) = 0)"
definition ncollinear :: "point → point → point → bool" where
  "ncollinear A B C = (¬ collinear A B C)"
lemma angle_CBD_value:
  fixes A B C D :: point
  assumes "ncollinear A B C"
    and "ncollinear D B C"
    and "collinear A B D"
    and "A ≠ B"
    and "D ≠ B"
    and "angle A B C = 110"
  shows "angle C B D = 70"
proof -
  have "collinear A B D ⟹ angle A B D = 180 ∨ angle A B D = 0" 
    by (metis angle_def collinear_def)
  have "angle A B D = 180 ∨ angle A B D = 0" 
    using assms(3) ‹collinear A B D ⟹ angle A B D = 180 ∨ angle A B D = 0› by blast
  have "angle C B D = 180 - angle A B C"
    using assms by (metis angle_def)
  thus "angle C B D = 70"
    using assms(6) by simp
qed