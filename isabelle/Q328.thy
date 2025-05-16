theory FourCirclesTangent
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale four_tangent_circles =
  fixes A B C P Q R S :: "real × real"
  assumes triangle_ABC: "¬ collinear A B C"
    and radius_1: "dist P P = 0" "dist Q Q = 0" "dist R R = 0" "dist S S = 0"
    and P_tangent_to_sides: 
      "dist P (line_of A B) = 1"
      "dist P (line_of B C) = 1"
      "dist P (line_of C A) = 1"
    and Q_tangent_to_sides:
      "dist Q (line_of A B) = 1"
      "dist Q (line_of B C) = 1"
      "dist Q (line_of C A) = 1"
    and R_tangent_to_sides:
      "dist R (line_of A B) = 1"
      "dist R (line_of B C) = 1"
      "dist R (line_of C A) = 1"
    and S_tangent_to_sides:
      "dist S (line_of A B) = 1"
      "dist S (line_of B C) = 1"
      "dist S (line_of C A) = 1"
    and circles_tangent:
      "dist P Q = 2" "dist P R = 2" "dist P S = 2"
      "dist Q R = 2" "dist Q S = 2" "dist R S = 2"
context four_tangent_circles
begin
theorem smallest_angle_PQS_is_30:
  "angle P Q S = pi/6 ∨ angle Q P S = pi/6 ∨ angle P S Q = pi/6"
  sorry