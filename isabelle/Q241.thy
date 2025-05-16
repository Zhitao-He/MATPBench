theory LargestEllipse
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem largest_ellipse_in_rectangle_center:
  "∃a b rx ry. 
    a = 20 ∧ 
    b = 10 ∧
    (∀x y. ((x - a)^2 / rx^2 + (y - b)^2 / ry^2 ≤ 1) ⟶ 
           (0 ≤ x ∧ x ≤ 40 ∧ 0 ≤ y ∧ y ≤ 20)) ∧
    rx = 20 ∧ 
    ry = 10"
  by (auto simp: algebra_simps)