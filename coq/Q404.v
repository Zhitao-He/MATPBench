####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem regular_heptagon_diagonal_angle :
  let pi := acos (-1) in
  let deg x := x * 180 / pi in
  let n := 7 in
  let A k := exp (2 * pi * k%:R / n) in
  let v1 := A 6 - A 0 in
  let v2 := A 2 - A 0 in
  deg (`Arg v2 - `Arg v1) = 360 / 7.
Proof.
admit.
Qed.
####