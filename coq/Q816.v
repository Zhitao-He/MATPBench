####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp.Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_right_sqrt42_y_value :
  forall (x : R),
    0 < x ->
    let A := (x, 0) in
    let B := (-(6 * x), 0) in
    let X := (0, 0) in
    let C := (0, 36) in
    let y := sqrt ((x - 0)^+2 + (0 - 36)^+2) in
    y = 6 * sqrt 42.
Proof. Admitted.
####