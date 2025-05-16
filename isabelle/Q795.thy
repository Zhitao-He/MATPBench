theory Circle_Arc_Measure
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin

(* 定义平面上的点 *)
type_synonym point = "real × real"

(* 定义圆 *)
record circle =
  center :: point
  radius :: real

(* 定义点在圆上 *)
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle p c ≡ dist p (center c) = radius c"

(* 定义两个向量的角度 (以度为单位) *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A O B ≡ 
    let v1 = (fst A - fst O, snd A - snd O);
        v2 = (fst B - fst O, snd B - snd O);
        cos_theta = (fst v1 * fst v2 + snd v1 * snd v2) / 
                    (sqrt((fst v1)^2 + (snd v1)^2) * sqrt((fst v2)^2 + (snd v2)^2))
    in (arccos cos_theta) * 180 / pi"

(* 定义圆弧的度数 *)
definition measure_of_arc :: "circle ⇒ point ⇒ point ⇒ real" where
  "measure_of_arc c p1 p2 ≡ 
    if on_circle p1 c ∧ on_circle p2 c then
      2 * angle p1 (center c) p2
    else 0"

(* 题目中的情况 *)
lemma measure_of_arc_GBA:
  fixes G A B C D :: point
  fixes omega :: circle
  assumes "center omega = G"
          "on_circle A omega"
          "on_circle B omega"
          "angle B G A = 30"
  shows "measure_of_arc omega G B A = 30"
proof -
  have "measure_of_arc omega G B A = 2 * angle G (center omega) B"
    by (simp add: measure_of_arc_def assms)
  also have "center omega = G" by (simp add: assms)
  finally show ?thesis using assms by simp
qed

end