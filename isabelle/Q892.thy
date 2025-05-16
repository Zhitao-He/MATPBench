theory TangentCircleProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

locale tangent_circle_problem =
  fixes S T U R A B C D J :: "real × real"  (* 点的坐标 *)
  fixes x :: real
  assumes circle_J: "J 是圆心"
  assumes tangent_RC: "RC 是圆J的切线"
  assumes tangent_RD: "RD 是圆J的切线" "RD = 3"
  assumes tangent_SA: "SA 是圆J的切线" "SA = 3"
  assumes tangent_SD: "SD 是圆J的切线"
  assumes tangent_TA: "TA 是圆J的切线" "TA = x"
  assumes tangent_TB: "TB 是圆J的切线"
  assumes tangent_UB: "UB 是圆J的切线"
  assumes tangent_UC: "UC 是圆J的切线" "UC = x"
  assumes perimeter: "周长(TSRU) = 18"

theorem tangent_circle_value:
  shows "x = 3/2"
proof -
  (* 根据切线性质，从同一点到同一圆的两条切线长度相等 *)
  have "SA = SD" using tangent_SA tangent_SD by simp
  have "TB = TA" using tangent_TB tangent_TA by simp
  have "UC = UB" using tangent_UC tangent_UB by simp
  have "RD = RC" using tangent_RD tangent_RC by simp

  (* 计算周长 *)
  have "周长(TSRU) = TA + AS + SD + DR + RC + CU + UB + BT" by auto
  have "周长(TSRU) = x + 3 + 3 + 3 + 3 + x + x + x" 
    using `TA = x` `SA = 3` `RD = 3` `UC = x`
    by (simp add: `TB = TA` `SA = SD` `UC = UB` `RD = RC`)
  
  (* 求解x *)
  have "18 = 4*x + 9" using perimeter by simp
  hence "4*x = 9" by simp
  thus "x = 9/4" by simp
qed

end