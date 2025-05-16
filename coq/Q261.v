####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variable R : realType.

Let A := row3 0 0 7.
Let G := row3 7 0 0.
Let H := row3 0 0 0.

Definition θ := acos (((G - A) *m ((H - G))^T) / (norm (G - A) * norm (H - G))).

Theorem cube_angle_AGH_value :
  exists deg, Rabs (deg - (θ * 180 / PI)) < 0.01.
Proof.
admit.
Qed.
####