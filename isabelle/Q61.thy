theory InscribedTriangle
  imports Main HOL.Real Complex_Main "HOL-Analysis.Euclidean_Space"
begin
context
  fixes O A B C D :: "real^2"
  assumes circO: "dist O A = dist O B" "dist O A = dist O C" "dist O A = dist O D"
    and diam_AB: "dist A B = 2 * dist O A" 
    and on_circ: "dist O A > 0"
    and on_line: "O ∈ closed_segment A B"
    and not_colinear: "¬ collinear A B C"
    and angle_ACD: "angle (C - A) (D - C) = of_real (40 * (pi/180))"
begin
lemma inscribed_angle_BAD:
  "angle (B - A) (D - A) = of_real (50 * (pi/180))"
proof -
  sorry
qed