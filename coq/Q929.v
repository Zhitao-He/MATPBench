####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section KiteProblem.
Variable R : realType.
Variables A B C D E : 'Point[R]_2.

Hypotheses
  AE_length : dist A E = 4;
  BE_length : dist B E = 3;
  kite_BADC : (dist B A = dist B C) /\ (dist D A = dist D C) /\ perpendicular (line B D) (line A C);
  collinear_BED : collinear [:: B; E; D];
  collinear_AEC : collinear [:: A; E; C].

Definition AB_length := dist A B.

Theorem AB_length_5 : AB_length = 5.
Proof. by []. Qed.

End KiteProblem.
####