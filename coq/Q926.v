####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_angle_C_45_deg :
  forall (A B C : 'rV[R]_2),
    (* Side lengths: *)
    normr (A - B) = 6 :> R ->
    normr (B - C) = 6 :> R ->
    normr (C - A) = 6 * sqrt 2 :> R ->
    let x := acos (((6 ^+ 2 + 6 ^+ 2 - (6 * sqrt 2) ^+ 2) / (2 * 6 * 6))%R) in
    (x * 180%:R / PI = 45)%R.
Proof. Admitted.
####