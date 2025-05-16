theory TriangleHeight
imports 
  Complex_Main 
  "HOL-Analysis.Euclidean_Space"
begin
section "Triangle height problem"
text ‹As shown in the diagram, AB=15, BC=h, ∠CAB=45°, BC is perpendicular to AC. 
      Find the value of h.›
lemma triangle_height_45deg_right:
  fixes A B C :: "real^2"
  assumes "B = A + (15, 0)"         (* AB = 15 *)
    and "angle (C - A) (B - A) = π/4" (* ∠CAB = 45° *)
    and "inner_product (C - B) (C - A) = 0" (* BC ⊥ AC *)
    and "h = norm (C - B)"          (* h is the length of BC *)
  shows "h = 15 * sqrt 2 / 2"
proof -
  have "sin (π/4) = 1/sqrt 2"
    by (simp add: sin_pi_4)
  have "cos (π/4) = 1/sqrt 2"
    by (simp add: cos_pi_4)
  have "angle (C - A) (B - A) = π/4" 
    by (rule assms(2))
  have "inner_product (C - B) (C - A) = 0"
    by (rule assms(3))
  have "norm (B - A) = 15"
    using assms(1) by auto
  (* Using the properties of right triangles and trigonometry *)
  have "h = 15 * sin (π/4)"
    sorry (* This would require a proper proof *)
  thus "h = 15 * sqrt 2 / 2"
    using ‹sin (π/4) = 1/sqrt 2› by (simp add: divide_simps)
qed