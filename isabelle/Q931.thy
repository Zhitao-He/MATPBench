theory AngleProblem
  imports Main HOL.Real
begin

(* 定义角度 *)
definition angle :: "real ⇒ real" where
  "angle α = α * (pi / 180)"

(* 问题描述:
   ∠AGE = 55°
   ∠BGA = x°
   ∠GBH = y°
   BD 平行于 GA
   求 y 的值 *)

lemma parallel_angles:
  assumes "∠AGE = angle 55"
      and "∠BGA = angle x"
      and "∠GBH = angle y" 
      and "BD ∥ GA" (* BD 平行于 GA *)
    shows "y = 125"
proof -
  (* 平行线中的内错角相等 *)
  have "∠GBD = ∠BGA" 
    by (metis assms(4)) (* 由平行性质，BD∥GA 导致 ∠GBD = ∠BGA *)
  
  (* ∠AGE + ∠BGA = 180° (共线) *)
  have "∠AGE + ∠BGA = angle 180" 
    by (metis assms(1) assms(2))
  
  (* 代入已知条件 *)
  hence "angle 55 + angle x = angle 180" 
    by (simp add: assms(1) assms(2))
  
  (* 求解 x *)
  hence "x = 125" 
    by (simp add: angle_def)
  
  (* ∠GBD = ∠BGA = angle 125 *)
  have "∠GBD = angle 125" 
    using ‹∠GBD = ∠BGA› ‹x = 125› assms(2) by auto
  
  (* ∠GBD + ∠GBH = 180° (共线) *)
  have "∠GBD + ∠GBH = angle 180" 
    by auto
  
  (* 代入已知条件 *)
  hence "angle 125 + angle y = angle 180" 
    using ‹∠GBD = angle 125› assms(3) by auto
  
  (* 求解 y *)
  thus "y = 125" 
    by (simp add: angle_def)
qed

end