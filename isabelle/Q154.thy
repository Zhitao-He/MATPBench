theory ThreeCirclesIntersection
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
type_synonym circle = "point × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = norm (p1 - p2)"
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle p c = (distance p (fst c) = snd c)"
locale three_circles_intersection =
  fixes G J K L H F :: point
  fixes rG rJ rK :: real
  assumes positive_radius: "rG > 0" "rJ > 0" "rK > 0"
  assumes L_on_circles: "distance L G = rG" "distance L J = rJ" "distance L K = rK"
  assumes GH_distance: "distance G H = 10"
  assumes F_on_G_circle: "distance F G = rG"
theorem FG_equals_10:
  shows "distance F G = 10"
proof -
  from F_on_G_circle have "distance F G = rG" by simp
  from GH_distance have "distance G H = 10" by simp
  from F_on_G_circle GH_distance have "distance F G = distance G H" by simp
  thus "distance F G = 10" using GH_distance by simp
qed