theory Triangle_Angle_Problem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale triangle =
  fixes A B C :: "real^2"
  assumes distinct: "A ≠ B" "B ≠ C" "C ≠ A"
context triangle
begin
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle P Q R = (
    let v1 = P - Q;
        v2 = R - Q 
    in 
    if v1 = 0 ∨ v2 = 0 then 0
    else let cos_angle = ((v1 •ᵥ v2) / (norm v1 * norm v2))
         in if cos_angle > 1 then 0 
            else if cos_angle < -1 then 180
            else acos cos_angle * (180 / pi))"
theorem triangle_angle_bca_66:
  assumes "angle A B C = 76"
  assumes "angle C A B = (1/2) * angle A B C"
  shows "angle B C A = 66"
proof -
  have "angle A B C + angle B C A + angle C A B = 180"
    sorry  
  with assms have "76 + angle B C A + 76/2 = 180" by simp
  hence "angle B C A = 180 - 76 - 38" by simp
  thus "angle B C A = 66" by simp
qed