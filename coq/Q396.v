####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_triangle_XYZ_sinX :
  let Z := (0,0) in
  let Y := (6,0) in
  let X := (6,8) in
  let angleX := atan2 (Y.2 - X.2) (Y.1 - X.1) - atan2 (Z.2 - X.2) (Z.1 - X.1) in
  sin (PI - angleX) = 3%:R / 5%:R.
Proof.
admit.
Qed.
####