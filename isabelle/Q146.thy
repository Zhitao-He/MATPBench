theory Circle_Problem
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义圆上点满足的条件：到圆心距离相等 *)
definition on_circle :: "real^2 ⇒ real^2 ⇒ real set ⇒ bool" where
"on_circle O P S ⟷ dist O P ∈ S"

(* 定义直径：两点连线经过圆心 *)
definition is_diameter :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
"is_diameter O P Q ⟷ O = (P + Q) / 2"

(* 定义向量的角度 *)
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
"angle O P Q = arccos (((P - O) • (Q - O)) / (norm (P - O) * norm (Q - O)))"

(* 定义角度相等 *)
definition angle_eq :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
"angle_eq O P1 Q1 O P2 Q2 ⟷ angle O P1 Q1 = angle O P2 Q2"

(* 定义弧上的角度：圆心角 *)
definition arc_angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
"arc_angle O P Q = angle O P Q"

(* 定义问题 *)
theorem circle_problem:
  fixes O A B C D E F :: "real^2"
  assumes "∃r > 0. on_circle O A {r} ∧ on_circle O B {r} ∧ on_circle O C {r} ∧
                   on_circle O D {r} ∧ on_circle O E {r} ∧ on_circle O F {r}"
      and "is_diameter O E C"  
      and "is_diameter O A B"  
      and "arc_angle O B D = arc_angle O D E"
      and "arc_angle O D E = arc_angle O E F"
      and "arc_angle O E F = arc_angle O F A"
  shows "angle A O E + angle E O A = pi"
begin
  (* 由圆周角定理，如果AB是直径，那么在圆上的任意一点E处，∠AEB = 90° *)
  from assms(3) have "angle A O B = pi" 
    unfolding is_diameter_def angle_def
    by auto
  
  (* 根据题目中圆心角相等的条件，可以推导出AE的角度 *)
  from assms(4,5,6) have "arc_angle O B A = arc_angle O F A"
    by (metis arc_angle_def)
    
  (* 最终证明在圆上，如果两个点的连线是直径的端点，则它们之间的圆周角为90° *)
  thus "angle A O E + angle E O A = pi"
    by auto
end

end