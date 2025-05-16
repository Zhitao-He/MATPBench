####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rectangle_MNQR_Problem.

Variable R : realType.

(* Define the points *)
Variables M N Q R P : 'e2[R].
Hypothesis rect_MNQR : is_rectangle M N Q R.

(* P is the intersection point of diagonals NR and MQ *)
Hypothesis P_on_NR : on_line P (Line N R).
Hypothesis P_on_MQ : on_line P (Line M Q).

(* Given: NP = 2x - 30, MP = 40 for some real x *)
Variable x : R.
Hypothesis NP_length : `|P - N| = 2 * x - 30.
Hypothesis MP_length : `|P - M| = 40.

Theorem rectangle_diagonals_problem :
  `|P - M| = 40.
Proof. Admitted.

End Rectangle_MNQR_Problem.
####