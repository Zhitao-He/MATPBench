theory RightTrianglePerimeter
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition dist :: "real^2 ⇒ real^2 ⇒ real" where
  "dist p q = norm (p - q)"
lemma triangle_perimeter_formula:
  fixes A B C :: "real^2"
  shows "dist A B + dist B C + dist C A = dist A B + dist B C + dist C A"
  by simp
theorem perimeter_triangle_abc_36:
  "∃ A B C :: real^2.
    dist B C = 12 ∧
    dist C A = 9 ∧
    dist A B = 15 ∧
    ((A - C) ∙ (B - C)) = 0 ∧
    (dist A B + dist B C + dist C A = 36)"
proof -
  show ?thesis
    by (auto simp: dist_def)
qed