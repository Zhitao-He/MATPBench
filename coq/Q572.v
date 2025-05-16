####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_QRP_angle_60 :
  let Q := (0, 0) : R * R in
  let R := (25, 0) : R * R in
  let P := (0, 25 * sqrt 3) : R * R in
  let angle_QRP := angle_at R Q P in
  angle_QRP = pi / 3.
Proof. Admitted.
####