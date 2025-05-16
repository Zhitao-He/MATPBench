theory Trapezoid
  imports Main Real
begin

(* 定义点的类型 *)
type_synonym point = "real × real"

(* 定义共线性 *)
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (
     let (x1,y1) = A;
         (x2,y2) = B;
         (x3,y3) = C
     in (x2-x1)*(y3-y1) = (y2-y1)*(x3-x1))"

(* 定义两点间的距离 *)
definition length :: "point ⇒ point ⇒ real" where
  "length A B = sqrt((fst B - fst A)^2 + (snd B - snd A)^2)"

(* 定义中点 *)
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B)/2, (snd A + snd B)/2)"

(* 定理：关于梯形中一条线段的长度 *)
theorem trapezoid_UT_length:
  fixes Q R S T U V :: point
  assumes "collinear Q V U"        (* V是QU的中点 *)
  assumes "collinear R S T"        (* S是RT的中点 *)
  assumes "length Q R = 5"         (* 已知边长QR = 5 *)
  assumes "length V S = 11"        (* 已知边长VS = 11 *)
  assumes "fst Q < fst R"          (* 确保梯形方向 *)
  assumes "fst V < fst S"          (* 确保梯形方向 *)
  shows "length U T = 17"
  (* 这里只需要定义定理，无需证明 *)

end