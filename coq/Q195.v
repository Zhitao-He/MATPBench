####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem streetlamp_height_9m :
  let A := 0 in
  let B := 25 in
  let C := 55 in
  let h_p := 1.5 in
  exists h : R,
    let slope := (h - h_p) / (C - B) in
    slope = h_p / (B - A) /\h = 9.
Proof.
admit.
Qed.
####