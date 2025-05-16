theory RightTriangleMidpoints
imports Complex_Main
begin

(* 定义平面上的点 *)
type_synonym point = "real × real"

(* 定义点之间的中点 *)
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B) / 2, (snd A + snd B) / 2)"

(* 定义三角形面积 *)
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C = abs ((fst B - fst A) * (snd C - snd A) - (snd B - snd A) * (fst C - fst A)) / 2"

(* 定理：在直角三角形中，中线三角形的面积 *)
theorem midpoint_triangle_area:
  let A = (0::real, 0::real);
      B = (15::real, 0::real);
      C = (0::real, 24::real);
      D = midpoint A C;
      E = midpoint A B;
      F = midpoint B C 
  in area_triangle D E F = 45
proof -
  let ?A = "(0::real, 0::real)"
  let ?B = "(15::real, 0::real)"
  let ?C = "(0::real, 24::real)"
  let ?D = "midpoint ?A ?C"
  let ?E = "midpoint ?A ?B"
  let ?F = "midpoint ?B ?C"
  
  have "?D = (0, 12)" using midpoint_def by auto
  moreover have "?E = (15/2, 0)" using midpoint_def by auto
  moreover have "?F = (15/2, 12)" using midpoint_def by auto
  
  ultimately show "area_triangle ?D ?E ?F = 45"
    unfolding area_triangle_def
    by (simp add: algebra_simps)
qed

end