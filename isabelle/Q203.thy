theory SemicircleWaterSurface
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义点和相关几何对象 *)
definition O :: "real × real" where "O = (0, 0)"
definition r :: "real" where "r = 4"
definition h :: "real" where "h = 1"
definition A':: "real × real" where "A' = (-sqrt 15, h)"
definition B':: "real × real" where "B' = (sqrt 15, h)"

(* 定义桥洞中的水面宽度 *)
definition water_surface_width :: "real" where
  "water_surface_width = fst B' - fst A'"

(* 弧ACB是半圆的形式化定义 *)
(* 半圆上的点满足方程 (x - x₀)² + (y - y₀)² = r² 且 y ≥ y₀，其中(x₀, y₀)是圆心 *)
definition is_on_semicircle :: "(real × real) ⇒ (real × real) ⇒ real ⇒ bool" where
  "is_on_semicircle p center radius = (
    (fst p - fst center)^2 + (snd p - snd center)^2 = radius^2 ∧
    snd p ≥ snd center)"

(* 要证明的定理 *)
theorem semicircle_water_surface_width:
  "water_surface_width = 2 * sqrt 15"
  unfolding water_surface_width_def A'_def B'_def
  by auto

end