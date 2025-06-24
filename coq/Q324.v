####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sector_perimeter_12_60deg :
  let r := 12 in
  let theta := PI / 3 in
  let arc_length := r * theta in
  let perimeter := 2 * r + arc_length in
  perimeter = 24 + 4 * PI.
Proof. Admitted.
####