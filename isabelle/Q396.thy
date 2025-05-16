theory RightTriangleSinX
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

theorem right_triangle_sin_X:
  fixes X Y Z :: "real × real"
  assumes "Z = (0, 0)"
  assumes "Y = (0, 4)"  (* 根据正弦值3/5和勾股定理计算的坐标 *)
  assumes "X = (3, 0)"  (* 根据正弦值3/5和勾股定理计算的坐标 *)
  assumes "dist X Z = 3"  (* 边长 *)
  assumes "dist Y Z = 4"  (* 边长 *)
  assumes "dist X Y = 5"  (* 边长 *)
  assumes "angle Z X Y = pi/2"  (* X处是直角 *)
  shows "sin (angle Y X Z) = 3/5"
begin
  have "dist X Y^2 = dist X Z^2 + dist Y Z^2" using assms
    by (simp add: dist_real_def pythagoras_theorem)
  
  have "sin (angle Y X Z) = dist Y Z / dist X Y" using assms
    by (simp add: sin_angle_formula)
  
  thus "sin (angle Y X Z) = 3/5"
    by (simp add: assms)
end

end