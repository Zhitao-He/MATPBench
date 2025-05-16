####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem perimeter_triangle_AMB_80 :
  let C := (0, 0) : R * R in
  let M := (12, 0) : R * R in
  let B := (42, 0) : R * R in
  let A := (12, 16) : R * R in
    (distance A M + distance M B + distance B A = 80).
Proof. Admitted.
####