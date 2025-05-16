theory IsoscelesTriangle
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Euclidean_Space"
begin
definition B :: "real × real" where "B = (0, 0)"
definition C :: "real × real" where "C = (20, 0)"
theorem isosceles_triangle_A_y_coordinate:
  fixes a_x a_y :: real
  defines "A ≡ (a_x, a_y)"
  assumes isosceles: "dist A B = dist A C"
    and area: "abs ((fst B * snd C - fst C * snd B) + 
                   (fst C * snd A - fst A * snd C) + 
                   (fst A * snd B - fst B * snd A)) / 2 = 240"
  shows "a_y = 24"
proof -
  have B_def: "B = (0, 0)" by (simp add: B_def)
  have C_def: "C = (20, 0)" by (simp add: C_def)
  have "dist A B = dist A C" by (rule isosceles)
  then have "sqrt((a_x)² + (a_y)²) = sqrt((a_x - 20)² + a_y²)"
    by (simp add: A_def B_def C_def dist_real_def)
  then have "a_x² + a_y² = (a_x - 20)² + a_y²"
    by (metis power2_eq_square real_sqrt_pow2)
  then have "a_x² = (a_x - 20)²"
    by simp
  then have "a_x² = a_x² - 40*a_x + 400"
    by (simp add: power2_diff)
  then have "40*a_x = 400"
    by simp
  then have "a_x = 10"
    by simp
  have "abs ((fst B * snd C - fst C * snd B) + 
             (fst C * snd A - fst A * snd C) + 
             (fst A * snd B - fst B * snd A)) / 2 = 240"
    by (rule area)
  then have "abs ((0 * 0 - 20 * 0) + 
                 (20 * a_y - a_x * 0) + 
                 (a_x * 0 - 0 * a_y)) / 2 = 240"
    by (simp add: A_def B_def C_def)
  then have "abs (20 * a_y) / 2 = 240"
    by simp
  then have "10 * a_y = 240"
    by simp
  then have "a_y = 24"
    by simp
  thus "a_y = 24"
    by simp
qed