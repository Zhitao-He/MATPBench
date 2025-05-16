####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_shaded_consecutive_integer_square
  (a b c : R)
  (Hconsec : (b = a + 1) /\ (c = b + 1))
  : let S := 2*(a + b) in
    let area_square := S ^ 2 in
    let area_inner := 2 * c ^ 2 in
    let area_shaded := area_square - area_inner in
      area_shaded = 24.
Proof. Admitted.
####