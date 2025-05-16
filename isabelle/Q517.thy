theory TriangleXValue
  imports Main "HOL-Analysis.Analysis"
begin
context
  fixes A B C :: "real × real"
  assumes triangle: "¬ collinear A B C"
  and BA_length: "dist B A = 6"
  and CB_length: "dist C B = x"
  and CA_length: "dist C A = x"
  and angle_BAC: "angle B A C = pi/4"
  and angle_CBA: "angle C B A = pi/4"
  and perpendicular: "angle B C A = pi/2"
lemma triangle_isosceles_right_x_value: "x = 3 * sqrt 2"
proof -
  have "dist B A^2 = dist B C^2 + dist C A^2" 
    using perpendicular
    by (simp add: pythagorean_theorem)
  hence "36 = x^2 + x^2" 
    using BA_length CB_length CA_length
    by (simp add: power2_eq_square)
  hence "36 = 2 * x^2" by simp
  hence "x^2 = 18" by simp
  hence "x = sqrt 18" 
    using assms
    by (metis power2_eq_square real_sqrt_pow2 zero_le_mult_iff)
  have "sqrt 18 = sqrt (9 * 2)" by simp
  also have "... = 3 * sqrt 2" 
    by (simp add: real_sqrt_mult)
  finally show "x = 3 * sqrt 2" by simp
qed