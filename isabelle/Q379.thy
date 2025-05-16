theory Pentagon
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

(* 定义五边形的顶点坐标 *)
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (8, 0)" 
definition C :: "real × real" where "C = (8, 12)"
definition D :: "real × real" where "D = (4, 24)"
definition E :: "real × real" where "E = (0, 12)"

(* 定义多边形面积计算函数 *)
fun polygon_area :: "(real × real) list ⇒ real" where
  "polygon_area [] = 0" |
  "polygon_area [p] = 0" |
  "polygon_area (p#ps) = (
    let vs = p#ps@[p] in
    let n = length vs - 1 in
    let sum = ∑i∈{0..<n}. 
      (fst(vs!i) * snd(vs!(i+1)) - fst(vs!(i+1)) * snd(vs!i)) in
    abs(sum / 2)
  )"

(* 证明五边形面积为144 *)
theorem pentagon_area_144:
  "polygon_area [A, B, C, D, E] = 144"
  unfolding A_def B_def C_def D_def E_def
  by (simp add: algebra_simps)

end