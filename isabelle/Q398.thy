theory BoxDistance
imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point3 = "real × real × real"
definition P :: point3 where
  "P = (8, 8, 0)"
definition Q :: point3 where
  "Q = (16, 16, 4)"
definition dist3 :: "point3 ⇒ point3 ⇒ real" where
  "dist3 A B = (let (x1, y1, z1) = A; (x2, y2, z2) = B in
                sqrt ((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2))"
theorem box_center_to_opposite_corner_distance:
  "dist3 P Q = 12"
proof -
  have "dist3 P Q = sqrt ((16 - 8)^2 + (16 - 8)^2 + (4 - 0)^2)"
    unfolding dist3_def P_def Q_def
    by simp
  also have "... = sqrt (8^2 + 8^2 + 4^2)"
    by simp
  also have "... = sqrt (64 + 64 + 16)"
    by simp
  also have "... = sqrt 144"
    by simp
  also have "... = 12"
    by simp
  finally show ?thesis .
qed