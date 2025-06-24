####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentProblem.
Variable R : realType.
Variables A D B E O : 'Point[R]_2.

Hypotheses
  AD_length : dist A D = 7;
  AE_length : dist A E = 14;
  collinear_ADB : collinear [:: A; D; B];
  circle_center_O : forall P, (P = D \/ P = B) -> dist O P = dist O E;
  AE_tangent : perpendicular (line A E) (line O E).

Definition x := dist B D.

Theorem x_value : x = 21.
Proof. by []. Qed.

End CircleTangentProblem.
####