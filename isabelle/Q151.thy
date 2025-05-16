theory InscribedRightAngle
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale inscribed_angle =
  fixes O A B C :: "real^2"
  assumes circle_def: "dist O A = dist O B" "dist O B = dist O C" "dist O C = dist O A"
      and distinct_points: "A ≠ B" "B ≠ C" "A ≠ C"
      and diameter: "O ∈ closed_segment A C"
      and non_collinear: "¬collinear {A, B, C}"
definition angle2 :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real"
  where "angle2 B A C = angle (B - A) (C - A)"
theorem inscribed_angle_semicircle:
  assumes "O ∈ closed_segment A C"
      and "dist O A = dist O B"
      and "dist O B = dist O C"
      and "dist O C = dist O A"
      and "A ≠ B" "B ≠ C" "A ≠ C"
      and "¬collinear {A, B, C}"
    shows "angle2 B A C = pi/2"