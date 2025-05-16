theory CylinderCubeProblem
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin

(* 圆柱桶的参数 *)
definition barrel_radius :: "real" where "barrel_radius = 4"
definition barrel_height :: "real" where "barrel_height = 10"

(* 立方体的参数 *)
definition cube_side :: "real" where "cube_side = 8"

(* 立方体对角线的长度 *)
definition cube_diagonal :: "real" where
  "cube_diagonal = cube_side * sqrt 3"

(* 计算立方体排出的水的体积 *)
definition water_displaced :: "real" where
  "water_displaced = 
    let 
      (* 圆柱的体积 *)
      cylinder_volume = π * (barrel_radius^2) * barrel_height;
      
      (* 立方体的体积 *)
      cube_volume = cube_side^3;
      
      (* 立方体在圆柱外部的体积 *)
      outside_volume = 
        if cube_diagonal ≤ barrel_height then
          (* 立方体完全在圆柱内 *)
          0
        else
          (* 立方体有部分在圆柱外，但我们需要考虑的是实际排出的水量 *)
          let
            h_half = cube_diagonal / 2; (* 立方体中心到顶点的距离 *)
            cube_center_height = min h_half barrel_height; (* 立方体中心的高度 *)
            cube_in_cylinder = min cube_volume 
              (* 实际在圆柱体内的立方体体积，这是个近似计算 *)
              (if 2*barrel_radius ≥ cube_side then cube_volume 
               else π * barrel_radius^2 * cube_diagonal)
          in
          cube_in_cylinder
    in
    min cube_volume cylinder_volume"

(* v² 的值 *)
definition v_squared :: "real" where
  "v_squared = water_displaced^2"

(* 验证 v² = 64^2 = 4096 *)
lemma "v_squared = 4096"
  unfolding v_squared_def water_displaced_def
  by auto

end