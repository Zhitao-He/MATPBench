theory TriangleIncenterConcurrence
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

(* 定义点，使用实数对表示坐标 *)
type_synonym point = "real × real"

(* 计算两点之间的距离 *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"

(* 定义点是否在两点构成的线段上 *)
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C ≡ ∃t. 0 < t ∧ t < 1 ∧
    B = ((1 - t) * fst A + t * fst C, (1 - t) * snd A + t * snd C)"

(* 定义圆 *)
type_synonym circle = "point × real"  (* 圆心和半径 *)

(* 定义点是否在圆上 *)
definition on_circle :: "circle ⇒ point ⇒ bool" where
  "on_circle c p ≡ distance (fst c) p = snd c"

(* 定义三个点是否共线 *)
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ≡ ∃k l. (k,l) ≠ (0,0) ∧
    (fst B - fst A) * l = (fst C - fst A) * k ∧
    (snd B - snd A) * l = (snd C - snd A) * k"

(* 定义三条线是否共点 *)
definition concurrent :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concurrent A B C D E F ≡ 
    ∃P. (∃t1. t1 ≠ 0 ∧ t1 ≠ 1 ∧ P = ((1-t1)*fst A + t1*fst B, (1-t1)*snd A + t1*snd B)) ∧
        (∃t2. t2 ≠ 0 ∧ t2 ≠ 1 ∧ P = ((1-t2)*fst C + t2*fst D, (1-t2)*snd C + t2*snd D)) ∧
        (∃t3. t3 ≠ 0 ∧ t3 ≠ 1 ∧ P = ((1-t3)*fst E + t3*fst F, (1-t3)*snd E + t3*snd F))"

(* 主题目 *)
theorem triangle_incenter_circles_concurrent:
  fixes A B C D E F G J K M N :: point
  assumes "¬ collinear A B C"  (* 三角形ABC *)
    and "between B D C"        (* 点D在BC上 *)
    (* E是三角形ABD的内心 *)
    and "∃r. r > 0 ∧ distance E A = r ∧ distance E B = r ∧ distance E D = r"
    (* F是三角形ACD的内心 *)
    and "∃r. r > 0 ∧ distance F A = r ∧ distance F C = r ∧ distance F D = r"
    (* 定义两个圆 *)
    and "let circleE = (E, distance E D); circleF = (F, distance F D) in
         on_circle circleE G ∧ on_circle circleF G ∧ G ≠ D"
    (* 点J在圆E上且在AB上 *)
    and "let circleE = (E, distance E D) in on_circle circleE J ∧ between A J B"
    (* 点K在圆E上且在BC上 *)
    and "let circleE = (E, distance E D) in on_circle circleE K ∧ between B K C"
    (* 点M在圆F上且在AC上 *)
    and "let circleF = (F, distance F D) in on_circle circleF M ∧ between A M C"
    (* 点N在圆F上且在BC上 *)
    and "let circleF = (F, distance F D) in on_circle circleF N ∧ between B N C"
  shows "concurrent J K M N G D"  (* 线JK、MN和GD共点 *)
  oops

end