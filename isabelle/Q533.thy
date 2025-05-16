theory RightTrianglesProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = norm (p - q)"
definition orthogonal :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "orthogonal a b c d = ((b - a) • (d - c) = 0)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line p a b = (∃t. 0 ≤ t ∧ t ≤ 1 ∧ p = a + t *R (b - a))"
theorem value_of_z:
  fixes A B C D :: point
  assumes "orthogonal C A C B"    
  shows "distance C D = 6"        
  have "distance A B = distance A D + distance D B" 
    using assms(5) on_line_def by (metis dist_triangle_eq)
  hence "distance A B = 4 + 9" using assms(3) assms(4) by simp
  hence AB: "distance A B = 13" by simp
  have triangle_ACB: "orthogonal C A C B" using assms(1) by simp
  have triangle_BDC: "orthogonal B D C D" using assms(2) by simp
  have "distance B C ^ 2 = distance B D ^ 2 + distance C D ^ 2"
    using triangle_BDC orthogonal_def
    by (metis dot_product_pythagorean)
  hence "distance B C ^ 2 = 81 + distance C D ^ 2" 
    using assms(4) by (simp add: power2_eq_square)
  have "distance C D ^ 2 = 36"
    sorry
  hence "distance C D = 6"
    by (simp add: power2_eq_square real_sqrt_unique)
  thus "distance C D = 6" by simp
qed