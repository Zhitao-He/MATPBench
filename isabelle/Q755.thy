theory FDA_Arc_Measure
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

section ‹Circle Properties›

(* 定义点和角度 *)
locale circle_problem =
  fixes F :: "real^2"    (* 圆心F *)
    and D E A :: "real^2" (* 圆上的点 *)
  assumes 
    angle_EFA: "angle E F A = 63"
    and DF_perp_EF: "orthogonal (D - F) (E - F)"
    and on_circle: "dist D F = dist E F" "dist D F = dist A F"

context circle_problem
begin

  (* 角度计算辅助引理 *)
  lemma angle_DFE: "angle D F E = 90"
    using DF_perp_EF by (simp add: orthogonal_angle)

  (* 角度求和 *)
  lemma angle_sum: "angle D F A = angle D F E + angle E F A"
    by (rule angle_addition)

  (* 带入已知值 *)
  lemma angle_DFA: "angle D F A = 90 + 63"
    using angle_DFE angle_EFA angle_sum by simp

  (* 计算角DFA *)
  lemma compute_DFA: "angle D F A = 153"
    using angle_DFA by simp

  (* 由于F是圆心，角DFA对应的弧FDA的度数是角DFA的2倍 *)
  lemma arc_FDA: "arc_measure F D A = 2 * angle D F A"
    by (rule arc_property_center_angle)

  (* 计算弧FDA的度数 *)
  theorem FDA_arc_value: "arc_measure F D A = 2 * 153"
    using compute_DFA arc_FDA by simp

  (* 最终结果 *)
  theorem FDA_arc_answer: "arc_measure F D A = 306"
    using FDA_arc_value by simp

end

end