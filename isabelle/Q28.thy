theory CircleAngle
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
definition on_circle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "on_circle O A B C ≡ dist O A = dist O B ∧ dist O A = dist O C"
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle A B C = 
    let 
      v1 = A - B;
      v2 = C - B
    in 
      if v1 = 0 ∨ v2 = 0 then 0
      else arccos ((v1 • v2) / (norm v1 * norm v2))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg r = r * 180 / pi"
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad d = d * pi / 180"
lemma angle_in_circle:
  assumes "on_circle O A B C"
      and "angle A C B = deg_to_rad 25"
    shows "angle B A O = deg_to_rad 65"
begin
  text ‹证明过程中需要用到圆周角的相关性质，即圆周角等于对应圆心角的一半›
  