####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleArcProblem.

Variable R : realType.
Variables A B C D O : R ^ 2.
Hypothesis on_circle_A : norm (A - O) = norm (B - O).
Hypothesis on_circle_B : norm (B - O) = norm (C - O).
Hypothesis on_circle_C : norm (C - O) = norm (D - O).
Hypothesis diameter_AD : O = ((A + D) / 2)%R.
Hypothesis AD_length : norm (A - D) = 36.
Hypothesis AB_parallel_CD : colinear [:: A; B; C; D].

Definition circle_radius := (norm (A - D)) / 2.
Definition angle_AOB :=
  let OA := A - O in let OB := B - O in
  acos ((OA *d OB) / (norm OA * norm OB)).
Definition arc_length_AB := circle_radius * angle_AOB.

Theorem arc_AB_length_is_8pi : arc_length_AB = 8 * PI.
Proof. Admitted.
Qed.
####