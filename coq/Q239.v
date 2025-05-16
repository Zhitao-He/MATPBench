####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_area_parabola_36mx2
  (x : R)
  (hx : 0 < x <= 6) :
  let y := 36 - x^2 in
  let A := 2 * x * y in
  A = 72 * x - 2 * x^3.
Proof. Admitted.
####