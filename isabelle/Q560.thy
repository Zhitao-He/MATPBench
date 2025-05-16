theory SimilarQuadrilaterals
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
section ‹Quadrilaterals and Similarity›
type_synonym point = "real × real"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral P Q R S = abs (
    (fst P * snd Q - fst Q * snd P) +
    (fst Q * snd R - fst R * snd Q) +
    (fst R * snd S - fst S * snd R) +
    (fst S * snd P - fst P * snd S)
  ) / 2"
definition similar_quadrilaterals :: "point × point × point × point ⇒ point × point × point × point ⇒ real ⇒ bool" where
  "similar_quadrilaterals quad1 quad2 ratio ≡ 
   let (P1, Q1, R1, S1) = quad1;
       (P2, Q2, R2, S2) = quad2
   in (∃k. k = ratio ∧ 
       k > 0 ∧
       area_quadrilateral P1 Q1 R1 S1 = k^2 * area_quadrilateral P2 Q2 R2 S2)"
lemma problem_solution:
  assumes "area_quadrilateral B C A W = 500"
          "dist B W = 30"
          "dist D G = 15"
          "similar_quadrilaterals (B, C, A, W) (D, E, F, G) ratio"
          "ratio = dist B W / dist D G"
  shows "area_quadrilateral D E F G = 125"
proof -
  from assms(2) assms(3) assms(5) have "ratio = 30 / 15" by simp
  hence "ratio = 2" by simp
  from assms(4) have "area_quadrilateral B C A W = ratio^2 * area_quadrilateral D E F G"
    unfolding similar_quadrilaterals_def
    by (simp add: Let_def)
  with ‹ratio = 2› assms(1) have "500 = 2^2 * area_quadrilateral D E F G" by simp
  hence "500 = 4 * area_quadrilateral D E F G" by simp
  hence "area_quadrilateral D E F G = 500 / 4" by simp
  thus "area_quadrilateral D E F G = 125" by simp
qed