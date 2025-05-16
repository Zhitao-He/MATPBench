theory TriangleAreaProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale triangle_problem =
  fixes U V W X Y Z P :: "'a::euclidean_space"
  assumes non_collinear: "~(collinear {U, V, W})"
  and X_on_UV: "X ∈ closed_segment U V"
  and Y_on_VW: "Y ∈ closed_segment V W"
  and Z_on_UW: "Z ∈ closed_segment U W"
  and Y_ratio: "∃λ. 0 < λ ∧ λ < 1 ∧ Y = (1 - λ) •R V + λ •R W ∧ λ = 3/(4+3)"
  and P_intersections: "P ∈ closed_segment U Y ∧ P ∈ closed_segment V Z ∧ P ∈ closed_segment W X"
  and PYW_area: "area P Y W = 30"
  and PZW_area: "area P Z W = 35"
begin
definition area :: "'a ⇒ 'a ⇒ 'a ⇒ real" where
  "area A B C = norm (cross_product (B - A) (C - A)) / 2"
definition cross_product :: "'a ⇒ 'a ⇒ real" where
  "cross_product v w = norm (v ×⇩E w)"
theorem UXP_area: "area U X P = 84"
proof -
  sorry
qed