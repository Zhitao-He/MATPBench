theory GeometryProblem
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin

(* 定义几何场景中的关键点 *)
locale geometry_diagram =
  fixes A D G H J K :: "real^2"
  
  (* 已知条件：∠ADK=96° *)
  assumes angle_ADK: "angle (A - D) (K - D) = pi * 96 / 180"
  
  (* 已知条件：∠HGJ=42° *)
  and angle_HGJ: "angle (H - G) (J - G) = pi * 42 / 180"
  
  (* 已知条件：GA∥HD *)
  and GA_parallel_HD: "parallel (G - A) (H - D)"

(* 以下是我们要证明的结果 *)
theorem (in geometry_diagram) 
  shows "angle (G - H) (D - H) = pi * 42 / 180"
  (* 结论：∠GHD = 42° *)
  using angle_HGJ GA_parallel_HD
  by (metis angle_alternate_interior_in_parallel)
  (* 这里应用了平行线的内错角相等性质 *)

end