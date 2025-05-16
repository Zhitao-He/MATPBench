theory SurfaceAreaCalculation
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin

theorem surface_area_of_composite_solid:
  fixes s1 s2 s3 r h :: real
  assumes "s1 = 33" and "s2 = 25" and "s3 = 20"
          and "r = 6" and "h = 11"
  defines "π ≡ pi"
          and "box_area ≡ 2 * (s1 * s2 + s1 * s3 + s2 * s3)"
          and "cyl_area ≡ 2 * π * r * h + 2 * π * r^2"
          and "total_area ≡ box_area * 2 - 2 * π * r^2 + cyl_area"
  shows "∃S. abs (S - total_area) < 0.01 ∧ abs (S - 812850) < 0.01"
begin
  have "total_area = box_area * 2 - 2 * π * r^2 + cyl_area" by (simp add: total_area_def)
  also have "... = 2 * (2 * (s1 * s2 + s1 * s3 + s2 * s3)) - 2 * π * r^2 + (2 * π * r * h + 2 * π * r^2)"
    by (simp add: box_area_def cyl_area_def)
  also have "... = 4 * (s1 * s2 + s1 * s3 + s2 * s3) - 2 * π * r^2 + 2 * π * r * h + 2 * π * r^2"
    by (simp add: algebra_simps)
  also have "... = 4 * (s1 * s2 + s1 * s3 + s2 * s3) + 2 * π * r * h"
    by (simp add: algebra_simps)
  finally show ?thesis
    using assms by auto
end

end