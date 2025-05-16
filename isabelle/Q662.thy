theory Geometry_JAC_24_degrees
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale triangle_with_incenter =
  fixes A B C :: "real^2"
  assumes triangle_valid: "A ≠ B" "B ≠ C" "C ≠ A" "~collinear A B C"
  fixes J :: "real^2"
  assumes J_is_incenter: "J = incenter C B A"
  fixes D E F :: "real^2"
  assumes D_on_BC: "D ∈ line_segment B C"
    and E_on_AB: "E ∈ line_segment A B"
    and F_on_AC: "F ∈ line_segment A C"
  assumes JE_perp_AE: "orthogonal (J - E) (A - E)"
    and AF_perp_JF: "orthogonal (A - F) (J - F)"
    and CD_perp_JD: "orthogonal (C - D) (J - D)"
  assumes AE_length: "norm (A - E) = 12"
    and AJ_length: "norm (A - J) = 15"
    and angle_JBE: "angle (J - B) (E - B) = 34 * pi / 180"
    and angle_JCD: "angle (J - C) (D - C) = 32 * pi / 180"
begin
definition angle_JAC :: real
  where "angle_JAC = angle (J - A) (C - A)"
theorem angle_JAC_is_24_degrees:
  "angle_JAC = 24 * pi / 180"
proof -
  sorry
qed