####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Midpoint_Tangency.

Variable R : realType.

(* Points in the Euclidean plane *)
Variables O P A B C D E F : 'rV[R]_2.

(* Circles centered at O and P; define radii rO and rP > 0 *)
Variables rO rP : R.
Hypothesis rO_pos : 0 < rO.
Hypothesis rP_pos : 0 < rP.

(* A and B are intersection points of the circles *)
Hypothesis A_on_O : norm (A - O) = rO.
Hypothesis A_on_P : norm (A - P) = rP.
Hypothesis B_on_O : norm (B - O) = rO.
Hypothesis B_on_P : norm (B - P) = rP.
Hypothesis AB_distinct : A != B.

(* C is the intersection of lines BO and PA (with O ≠ P and PA, BO not parallel) *)
Hypothesis C_on_BO : exists k1 : R, C = B + k1 *: (O - B).
Hypothesis C_on_PA : exists k2 : R, C = P + k2 *: (A - P).
Hypothesis O_neq_P : O != P.

(* CD tangent to ⊙O at D; CE tangent to ⊙P at E *)
Hypothesis D_on_O : norm (D - O) = rO.
Hypothesis CD_tangent_O : 
  [forall v : 'rV[R]_2, (v != D) ==> (v \in line C D) ==> (norm (v - O) != rO)].
Hypothesis E_on_P : norm (E - P) = rP.
Hypothesis CE_tangent_P : 
  [forall v : 'rV[R]_2, (v != E) ==> (v \in line C E) ==> (norm (v - P) != rP)].

(* F = intersection of line DE and line AB *)
Hypothesis F_on_DE : exists s : R, F = D + s *: (E - D).
Hypothesis F_on_AB : exists t : R, F = A + t *: (B - A).

(* DE not degenerate *)
Hypothesis D_neq_E : D != E.

Theorem intersection_tangent_midpoint :
  F = (D + E) / 2.
Proof. Admitted.

End Midpoint_Tangency.
####