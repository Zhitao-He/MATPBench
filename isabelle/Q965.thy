theory GeometryProblem
  imports Main Triangles "HOL-Analysis.Euclidean_Space"
begin
section "Acute triangle with special points"
locale acute_triangle_setup =
  fixes A B C :: "real^2"
  assumes triangle_ABC: "pairwise_distinct [A, B, C]"
  and acute_angles: "angle A B C < pi/2" "angle B C A < pi/2" "angle C A B < pi/2"
  and AB_lt_AC: "dist A B < dist A C"
context acute_triangle_setup
begin
definition "inside_triangle P A B C ≡ 
  ∃α β γ. α > 0 ∧ β > 0 ∧ γ > 0 ∧ α + β + γ = 1 ∧ P = α • A + β • B + γ • C"
definition "on_line P X Y ≡ ∃t. P = (1 - t) • X + t • Y"
definition "parallel v w ≡ ∃c. c ≠ 0 ∧ v = c • w"
definition "vect P Q ≡ Q - P"
theorem triangle_putnam_style:
  assumes D_on_BC: "on_line D B C"
    and E_on_BC: "on_line E B C"
    and BD_eq_CE: "dist B D = dist C E"
    and P_in_ABC: "inside_triangle P A B C"
    and PD_par_AE: "parallel (vect P D) (vect A E)"
    and angle_PAB_eq_EAC: "angle P A B = angle E A C"
  shows "angle P B A = angle P C A"
  sorry