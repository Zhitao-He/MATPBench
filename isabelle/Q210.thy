theory ProjectionTriangle
imports Main Complex_Main "HOL-Analysis.Real_Vector_Spaces"
begin
theorem projection_triangle_side_length:
  fixes d1 d2 L pL :: real
  assumes "d1 = 20"
  assumes "d2 = 50" 
  assumes "L = 8"
  assumes "d1 / d2 = L / pL"
  shows "pL = 20"
proof -
  from ‹d1 = 20› ‹d2 = 50› ‹L = 8› have "20 / 50 = 8 / pL" 
    using ‹d1 / d2 = L / pL› by simp
  hence "2 / 5 = 8 / pL" by simp
  hence "2 * pL = 5 * 8" by (simp add: field_simps)
  hence "2 * pL = 40" by simp
  thus "pL = 20" by simp
qed