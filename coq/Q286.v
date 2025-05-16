####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := Point { px : R; py : R }.
Definition dist P Q := sqrt ((px P - px Q)^+2 + (py P - py Q)^+2).
Definition collinear A B C := (px B - px A)*(py C - py A) = (py B - py A)*(px C - px A).
Definition parallel A B C D := (px B - px A)*(py D - py C) = (py B - py A)*(px D - px C).

Theorem geometry_BN_length :
  forall A B M N,
    dist A M = 3 -> dist M N = 2.4 -> dist A B = 5 ->
    parallel M N A B -> collinear A M N -> collinear M N B ->
    dist B N = 4.
Proof.
admit.
Qed.
####