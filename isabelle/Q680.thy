theory Parallelogram_Area
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, AC=16, CD=23, ∠BDE=60°, DB and CA are opposite sides of the parallelogram BDCA, 
      DE is perpendicular to BE. Find Area(BDCA).›
(* Define points as 2D vectors *)
definition A :: "real^2" where "A = vector [0, 0]"
definition C :: "real^2" where "C = vector [16, 0]"
definition D :: "real^2" where "D = vector [16 + 23 * cos(pi/3), 23 * sin(pi/3)]"
definition B :: "real^2" where "B = D - (C - A)"
(* Define E such that DE ⊥ BE *)
definition E :: "real^2" where 
  "E = D + t *⇩ (B - D)" for t :: real
(* Conditions from the problem *)
lemma "norm (C - A) = 16"
  unfolding A_def C_def
  by simp
lemma "norm (D - C) = 23"
  unfolding C_def D_def
  by (simp add: norm_eq_sqrt_inner)
(* DB and CA are opposite sides of the parallelogram *)
lemma "B - D = A - C"
  unfolding A_def B_def C_def D_def
  by simp
(* Calculation of area *)
definition area_parallelogram :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_parallelogram P Q R S = norm ((Q - P) ×ᵥ (R - P))"
theorem area_BDCA: "area_parallelogram B D C A = 184 * sqrt 3"
  unfolding area_parallelogram_def B_def C_def D_def A_def
  by (simp add: algebra_simps)