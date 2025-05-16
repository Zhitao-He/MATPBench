####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleProblem.

Variable R : realType.

Variables O A B C D E F : 'rV[R]_2.

Hypotheses
  oncircle_A : norm (A - O) = norm (B - O) and
  oncircle_B : norm (B - O) = norm (C - O) and
  oncircle_C : norm (C - O) = norm (D - O) and
  oncircle_D : norm (D - O) = norm (E - O) and
  oncircle_E : norm (E - O) = norm (F - O) and
  oncircle_F : norm (F - O) = norm (A - O) and
  diam1 : (E + C)%R = (2%:R *: O)%R and
  diam2 : (A + B)%R = (2%:R *: O)%R and
  eq_arc1 : angle (B - O) (D - O) = angle (D - O) (E - O) and
  eq_arc2 : angle (D - O) (E - O) = angle (E - O) (F - O).

Theorem equal_inscribed_angles :
  angle (B - O) (D - O) = angle (E - O) (F - O).
Proof.
admit.
Qed.

End CircleProblem.
####