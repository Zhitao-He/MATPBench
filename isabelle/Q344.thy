theory Octagon_Area_Problem
imports Complex_Main 
begin
type_synonym point = "real \<times> real"
definition sub_point :: "point \<Rightarrow> point \<Rightarrow> point" where
  "sub_point (x1, y1) (x2, y2) = (x1 - x2, y1 - y2)"
definition norm_sq_point :: "point \<Rightarrow> real" where
  "norm_sq_point (x, y) = x*x + y*y"
definition dist_sq_point :: "point \<Rightarrow> point \<Rightarrow> real" where
  "dist_sq_point p1 p2 = norm_sq_point (sub_point p1 p2)"
definition Sqrt2 :: real where
  "Sqrt2 = sqrt 2"
definition P0 :: point where "P0 = (1 + Sqrt2, 1)"
definition P1 :: point where "P1 = (1, 1 + Sqrt2)"
definition P2 :: point where "P2 = (-1, 1 + Sqrt2)"
definition P3 :: point where "P3 = (-(1 + Sqrt2), 1)"
definition P4 :: point where "P4 = (-(1 + Sqrt2), -1)"
definition P5 :: point where "P5 = (-1, -(1 + Sqrt2))"
definition P6 :: point where "P6 = (1, -(1 + Sqrt2))"
definition P7 :: point where "P7 = (1 + Sqrt2, -1)"
definition VA :: point where "VA = (-Sqrt2, 0)"
definition VB :: point where "VB = (0, Sqrt2)"
definition VC :: point where "VC = (Sqrt2, 0)"
definition VD :: point where "VD = (0, -Sqrt2)"
definition shaded_region_vertices :: "point list" where
  "shaded_region_vertices = [VA, VB, VC, VD]"
definition area_shaded_region :: real where
  "area_shaded_region = dist_sq_point VA VB"
theorem find_area_of_shaded_region:
  "area_shaded_region = 4 * Sqrt2"
end