theory TriangleDistanceSum
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition distance_point_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "distance_point_line P A B = 
   (if A = B then norm (P - A) 
    else norm ((P - A) - ((P - A) • (B - A)) / (norm (B - A))^2 *\<^sub>R (B - A)))"
definition area_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_triangle A B C = abs (det2 (B - A) (C - A)) / 2"
definition det2 :: "real^2 ⇒ real^2 ⇒ real" where
  "det2 v w = v$1 * w$2 - v$2 * w$1"
definition in_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "in_triangle P A B C ⟷ (∃u v. u ≥ 0 ∧ v ≥ 0 ∧ u + v ≤ 1 ∧ 
   P = A + u *\<^sub>R (B - A) + v *\<^sub>R (C - A))"
theorem triangle_distance_weighted_sum:
  fixes A B C D :: "real^2"
  assumes "area_triangle A B C = 30"
      and "in_triangle D A B C"
      and "distance_point_line D B C = e"
      and "distance_point_line D C A = f" 
      and "distance_point_line D A B = g"
  shows "5 * e + 12 * f + 13 * g = 60"
  oops