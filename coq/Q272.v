####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_square_pyramid_volume :
  let s := 11%:R in
  let h := 7%:R in
  let V := (1%:R / 3%:R) * (s * s) * h in
  V = 847%:R / 3%:R.
Proof. Admitted.
####