theory WaterTrough
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin

text ‹计算半圆柱形水槽的外表面积›

definition trough_radius :: "real" where
  "trough_radius = 0.92"

definition trough_length :: "real" where
  "trough_length = 2.49"

definition trough_surface_area :: "real" where
  "trough_surface_area = 
    (* 半圆柱的弯曲表面积: (1/2) * (2 * π * r) * L = π * r * L *)
    (pi * trough_radius * trough_length) +
    (* 加上两个平面矩形侧面: 2 * r * L *)
    (2 * trough_radius * trough_length) +
    (* 加上两个半圆形端面: 2 * (1/2) * π * r^2 = π * r^2 *)
    (pi * trough_radius^2)"

theorem trough_surface_area_value:
  "abs (trough_surface_area - 986) < 0.05 ∧ trough_surface_area ≥ 0"
  by (auto simp: trough_surface_area_def trough_radius_def trough_length_def)

end