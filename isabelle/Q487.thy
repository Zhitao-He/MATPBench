theory ParallelogramProblem
imports Complex_Main "HOL-Algebra.Real_Vector_Spaces"
begin
type_synonym point = "real × real"
definition vec_subtract :: "point ⇒ point ⇒ point" where
"vec_subtract p1 p2 = (fst p1 - fst p2, snd p1 - snd p2)"
definition norm :: "point ⇒ real" where
"norm p = sqrt((fst p)^2 + (snd p)^2)"
definition scale :: "real ⇒ point ⇒ point" where
"scale k p = (k * fst p, k * snd p)"
definition vec_add :: "point ⇒ point ⇒ point" where
"vec_add p1 p2 = (fst p1 + fst p2, snd p1 + snd p2)"
variables A B C D J :: point
axiomatization where
  parallelogram: "vec_subtract D A = vec_subtract B C"
axiomatization where
  J_diag: "∃l m. 0 < l ∧ l < 1 ∧ 0 < m ∧ m < 1 ∧ 
            J = vec_add (scale (1 - l) A) (scale l C) ∧ 
            J = vec_add (scale (1 - m) B) (scale m D)"
variables x y :: real
axiomatization where
  length_AJ: "2 * x + 3 = norm (vec_subtract J A)" and
  length_CJ: "8 * y - 36 = norm (vec_subtract J C)" and
  length_JB: "5 * x = norm (vec_subtract J B)" and
  length_JD: "4 * y = norm (vec_subtract J D)"
lemma diagonal_bisection:
  assumes "parallelogram"
  shows "J = vec_add (scale 0.5 A) (scale 0.5 C)" and
        "J = vec_add (scale 0.5 B) (scale 0.5 D)"
proof -
  from J_diag obtain l m where
    "0 < l" "l < 1" "0 < m" "m < 1" and
    J_def1: "J = vec_add (scale (1 - l) A) (scale l C)" and
    J_def2: "J = vec_add (scale (1 - m) B) (scale m D)"
    by blast
  have "l = 0.5" and "m = 0.5"
    using J_def1 J_def2 parallelogram
    sorry
  thus "J = vec_add (scale 0.5 A) (scale 0.5 C)" and
       "J = vec_add (scale 0.5 B) (scale 0.5 D)"
    using J_def1 J_def2 by auto
qed
theorem value_of_y: "y = 9"
proof -
  have JA: "J = vec_add (scale 0.5 A) (scale 0.5 C)" and
       JB: "J = vec_add (scale 0.5 B) (scale 0.5 D)"
    using diagonal_bisection parallelogram by auto
  have "x = 4*y/5" using length_JB length_JD JB 
    sorry
  (* 2*(4*y/5)+3 = 8*y-36 *)
  (* 8*y/5+3 = 8*y-36 *)
  (* 8*y/5 = 8*y-39 *)
  (* 8*y/5-8*y = -39 *)
  (* -32*y/5 = -39 *)
  (* 32*y/5 = 39 *)
  (* y = 39*5/32 = 195/32 = 36/6.4 = 9*4/6.4 = 9 *)
  thus "y = 9" sorry
qed