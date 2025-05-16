theory TriangleTan
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_setting =
  fixes A B C :: "real^2"
  assumes AB_length: "norm (A - B) = 26"
  and AC_length: "norm (A - C) = 24"
  and BC_length: "norm (B - C) = 10"
  and BC_perp_AC: "((B - C) ⊥ (A - C))"
context triangle_setting
begin
lemma triangle_tan_ABC:
  "tan (angle (A - B) (C - B)) = 12/5"
proof -
  have "cos (angle (A - B) (C - B)) = ((A - B) ⊙ (C - B)) / (norm (A - B) * norm (C - B))"
    by (simp add: cos_angle)
  moreover have "((A - B) ⊙ (C - B)) = (norm (A - B))^2 + (norm (C - B))^2 - (norm (A - C))^2 / 2"
    sorry 
  moreover have "cos (angle (A - B) (C - B)) = 5/13"
    sorry 
  moreover have "tan (angle (A - B) (C - B)) = 12/5"
    sorry 
  ultimately show ?thesis by auto
qed