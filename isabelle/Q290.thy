theory HexagonInscribedInCircle
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin

(* 定义点和圆 *)
type_synonym point = "real × real"

(* 定义一个点是否在圆上 *)
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p c r ≡ (fst p - fst c)² + (snd p - snd c)² = r²"

(* 定义六边形是否内接于圆 *)
definition hexagon_inscribed_in_circle :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "hexagon_inscribed_in_circle c r A B C D E F ≡ 
    on_circle A c r ∧ on_circle B c r ∧ on_circle C c r ∧ 
    on_circle D c r ∧ on_circle E c r ∧ on_circle F c r"

(* 计算向量之间的角度（弧度） *)
definition angle_between_vectors :: "point ⇒ point ⇒ real" where
  "angle_between_vectors v1 v2 = 
    acos ((fst v1 * fst v2 + snd v1 * snd v2) / 
         (sqrt ((fst v1)² + (snd v1)²) * sqrt ((fst v2)² + (snd v2)²)))"

(* 计算三点形成的角度（弧度） *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
    angle_between_vectors (fst A - fst B, snd A - snd B) (fst C - fst B, snd C - snd B)"

(* 将弧度转换为度数 *)
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg α = α * 180 / pi"

(* 定理：六边形内接于圆，角α为145度 *)
theorem hexagon_inscribed_angle:
  "∃c r A B C D E F. 
    hexagon_inscribed_in_circle c r A B C D E F ∧ 
    rad_to_deg (angle A B C) = 145"
  sorry

end