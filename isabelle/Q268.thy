theory TrapezoidalPrism
imports 
  Complex_Main
  "HOL-Library.Real_Asymptotics"
begin

(* 定义梯形柱体的表面积计算 *)
definition trapezoidal_prism_surface_area :: "real × real × real × real ⇒ real" where
  "trapezoidal_prism_surface_area = (λ(a, b, h, l). 
     let 
       trapezoid_area = (a + b) * h / 2;
       side_face1 = l * h;
       side_face2 = l * a;
       side_face3 = l * b;
       slant_height = sqrt((a - b)^2 + h^2);
       side_face4 = l * slant_height
     in
       trapezoid_area * 2 + side_face1 + side_face2 + side_face3 + side_face4)"

(* 计算具体的梯形柱体表面积 *)
lemma "trapezoidal_prism_surface_area (12, 8, 10, 15) ≈ 577"
  unfolding trapezoidal_prism_surface_area_def Let_def
  by (simp add: real_approx_posclose)

end