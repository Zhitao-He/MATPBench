theory AngleAFD
  imports
    Complex_Main
    "HOL-Analysis.Euclidean_Space"
begin
section \<open>Angle AFD in Circle with Tangent\<close>
text \<open>
  Problem: As shown in the diagram, the center of circle A is A, DF is the tangent to circle A. 
  Find ∠AFD.
\<close>
locale circle_tangent =
  fixes A F D :: "real^2"
  fixes r :: real
  assumes r_pos: "r > 0"
  assumes F_on_circle: "norm (F - A) = r"
  assumes tangent_property: "perpendicular (F - A) (D - F)"
begin
lemma angle_AFD_is_right: "angle A F D = pi/2"
proof -
  have "perpendicular (F - A) (D - F)" by (rule tangent_property)
  then have "orthogonal (F - A) (D - F)" 
    unfolding perpendicular_def by simp
  then have "inner (F - A) (D - F) = 0" 
    unfolding orthogonal_def by simp
  then have "cos (angle A F D) = 0"
    using r_pos F_on_circle
    by (simp add: cos_angle_eq)
  then have "angle A F D = pi/2" 
    by (metis cos_pi_half)
  show ?thesis by simp
qed
theorem angle_AFD_is_90_degrees: "angle A F D = pi/2"
  by (rule angle_AFD_is_right)