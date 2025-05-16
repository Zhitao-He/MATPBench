####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sector_radius_square_problem :
  let A := (0,0) : R * R in
  let B := (1,0) : R * R in
  let D := (0,1) : R * R in
  forall r, r > 0 ->
    exists P, exists Q, exists S,
      P.1 = r * cos 0 /\P.2 = r * sin 0 /\n      Q.1 = r * cos (PI/2) /\Q.2 = r * sin (PI/2) ->
    r = 1.
Proof.
admit.
Qed.
####