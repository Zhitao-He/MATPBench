theory CircumcircleQuadrilateralAngle
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale circumcircle_quadrilateral =
  fixes O :: "real^2" and A :: "real^2" and B :: "real^2" and C :: "real^2" and D :: "real^2"
  assumes on_circle: "dist A O = dist B O" "dist B O = dist C O" "dist C O = dist D O" "dist D O = dist A O"
  assumes distinct_pts: "A ≠ B" "B ≠ C" "C ≠ D" "D ≠ A" "A ≠ C" "B ≠ D"
  assumes convex_ABCD: "convex {A, B, C, D}"
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real"
  where "angle P Q R = (
    if P = Q ∨ R = Q then 0
    else
      let v1 = P - Q;
          v2 = R - Q;
          cos_angle = (v1 ∙ v2) / (norm v1 * norm v2)
      in if cos_angle > 1 then 0 
         else if cos_angle < -1 then 180
         else acos cos_angle * (180 / pi))"
context circumcircle_quadrilateral 
begin
theorem angle_C_is_125:
  assumes "angle A O B = 110"
  shows "angle B C D = 125"
  sorry