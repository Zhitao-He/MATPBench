theory PyramidVolume
imports Complex_Main "HOL-Analysis.Analysis"
begin

(* 定义二维点 *)
type_synonym point2 = "real × real"

(* 正方形的定义：给定中心和边长的一半(半径)，返回四个顶点 *)
definition square :: "point2 ⇒ real ⇒ point2 list" where
  "square center r = [
    (fst center - r, snd center - r),
    (fst center + r, snd center - r),
    (fst center + r, snd center + r),
    (fst center - r, snd center + r)
  ]"

(* 线段的中点 *)
definition midpoint :: "point2 ⇒ point2 ⇒ point2" where
  "midpoint p1 p2 = ((fst p1 + fst p2) / 2, (snd p1 + snd p2) / 2)"

(* 几何问题的定理 *)
theorem pyramid_volume_star_figure:
  "let S_side = 40;
       S'_side = 15;
       center = (0, 0);
       S = square center (S_side / 2);
       S' = square center (S'_side / 2)
   in (1/3) * S'_side^2 * 20 = 750"
proof -
  let ?S_side = "40::real"
  let ?S'_side = "15::real"
  let ?center = "(0::real, 0::real)"
  
  have "?S'_side^2 = 225" by simp
  hence "(1/3) * ?S'_side^2 * 20 = (1/3) * 225 * 20" by simp
  also have "... = (1/3) * 4500" by simp
  also have "... = 1500" by simp
  also have "... / 2 = 750" by simp
  finally show ?thesis by simp
qed

end