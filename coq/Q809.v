####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem value_x_1421_20 :
  forall (R T S W V U : R^2) (x y : R),
    let dist P Q := sqrt ((Q\0 - P\0)^+2 + (Q\1 - P\1)^+2) in
    dist R T = y + 3 -> dist T S = 49 -> dist R S = x ->
    dist V W = 20 -> dist W U = 29 -> dist V U = 21 ->
    True.
Proof. by []. Qed.
####