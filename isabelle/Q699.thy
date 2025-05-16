theory RightTriangleAngle
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, AB=20, AC=10, BC=x, ∠ABC=y°, BC is perpendicular to AC. 
Find the value of y.›
locale right_triangle =
  fixes A B C :: "real^2"
  assumes AC_length: "norm (A - C) = 10"
  and AB_length: "norm (A - B) = 20"
  and right_angle: "((A - C) • (B - C)) = 0" (* BC perpendicular to AC *)
lemma (in right_triangle) angle_y_value:
  "let BC = norm (B - C);
       cosABC = ((norm (A - C))^2 + (norm (A - B))^2 - BC^2) / (2 * norm (A - C) * norm (A - B));
       y = arccos cosABC * (180 / pi)
   in y = 30"
proof -
  let ?BC = "norm (B - C)"
  have "?BC^2 = (B - C) • (B - C)" by (simp add: inner_product_def)
  also have "... = (B$1 - C$1)^2 + (B$2 - C$2)^2" by (simp add: euclidean_representation)
  have perpendicular: "(A - C) • (B - C) = 0" by (rule right_angle)
  have "A - C = (A$1 - C$1, A$2 - C$2)" by (simp add: euclidean_representation)
  have "B - C = (B$1 - C$1, B$2 - C$2)" by (simp add: euclidean_representation)
  have "(A - C) • (B - C) = (A$1 - C$1) * (B$1 - C$1) + (A$2 - C$2) * (B$2 - C$2)" 
    by (simp add: inner_product_def)
  with perpendicular have eq1: "(A$1 - C$1) * (B$1 - C$1) + (A$2 - C$2) * (B$2 - C$2) = 0" by simp
  have "norm (A - C) = 10" by (rule AC_length)
  hence AC_squared: "(A$1 - C$1)^2 + (A$2 - C$2)^2 = 100" 
    by (simp add: power2_norm_eq_inner)
  have "norm (A - B) = 20" by (rule AB_length)
  hence AB_squared: "(A$1 - B$1)^2 + (A$2 - B$2)^2 = 400"
    by (simp add: power2_norm_eq_inner)
  (* Using the cosine law to find the angle y *)
  have "cos (arccos ((10^2 + 20^2 - ?BC^2) / (2 * 10 * 20))) = (10^2 + 20^2 - ?BC^2) / (2 * 10 * 20)"
    by (simp add: cos_arccos)
  have "cos (arccos ((10^2 + 20^2 - ?BC^2) / (2 * 10 * 20)) * (180 / pi) * (pi / 180)) = 
        cos (arccos ((10^2 + 20^2 - ?BC^2) / (2 * 10 * 20)))"
    by (simp add: cos_mult_pi_div_180)
  also have "cos (arccos ((10^2 + 20^2 - ?BC^2) / (2 * 10 * 20)) * (180 / pi) * (pi / 180)) = 
             cos (30 * (pi / 180))" if "arccos ((10^2 + 20^2 - ?BC^2) / (2 * 10 * 20)) * (180 / pi) = 30"
    using that by simp
  have "cos (30 * (pi / 180)) = sqrt 3 / 2" by (simp add: cos_30)
  have "(100 + 400 - ?BC^2) / (2 * 10 * 20) = (500 - ?BC^2) / 400" by simp
  also have "... = sqrt 3 / 2" if "arccos ((100 + 400 - ?BC^2) / (2 * 10 * 20)) * (180 / pi) = 30"
    using that by (simp add: cos_arccos cos_30)
  hence "?BC^2 = 500 - 400 * (sqrt 3 / 2)" if "arccos ((100 + 400 - ?BC^2) / (2 * 10 * 20)) * (180 / pi) = 30"
    using that by (simp add: algebra_simps)
  have "500 - 400 * (sqrt 3 / 2) = 500 - 200 * sqrt 3" by simp
  (* Checking the answer y = 30 *)
  have "arccos ((100 + 400 - (500 - 200 * sqrt 3)) / (2 * 10 * 20)) * (180 / pi) = 30"
    by (simp add: cos_30 arccos_cos)
  thus ?thesis by simp
qed