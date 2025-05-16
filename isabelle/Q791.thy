theory GeometryProblem
  imports Main "HOL-Analysis.Euclidean_Space"
begin

(* 定义二维点类型 *)
type_synonym point = "real × real"

(* 定义向量运算 *)
definition vec :: "point ⇒ point ⇒ real^2" where
  "vec p1 p2 = (λi. if i = 1 then fst p2 - fst p1 else snd p2 - snd p1)"

(* 定义线段长度 *)
definition length :: "point ⇒ point ⇒ real" where
  "length p1 p2 = norm (vec p1 p2)"

(* 定义三角形的中线 *)
definition is_median :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_median A B C M ≡ (M = B ∧ length A M = length A C ∧ length C M = length B M) ∨
                       (M = A ∧ length B M = length B C ∧ length C M = length A M) ∨
                       (M = C ∧ length A M = length A B ∧ length B M = length C M)"

(* 定义三角形相似 *)
definition similar_triangles :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "similar_triangles A B C D E F ≡ ∃k>0. 
     length A B / length D E = length B C / length E F ∧ 
     length B C / length E F = length C A / length F D"

(* 问题中给定的条件 *)
lemma "∀R S T U V W x.
  length R A = 3 ∧
  length T A = 8 ∧
  length U B = x + 2 ∧
  length W B = 3 * x - 6 ∧
  is_median T A (R, S) ∧
  is_median W B (U, V) ∧
  similar_triangles R S T U V W
  ⟹ length U B = 36"
  sorry

end