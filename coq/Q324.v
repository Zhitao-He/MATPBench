####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sector_perimeter_12_60deg :
  let O := (0, 0) in
  let A := (12 * cos (PI / 3), 12 * sin (PI / 3)) in
  let B := (12, 0) in
  let r := 12 in
  let theta := PI / 3 in
  let arc_length := r * theta in
  let perimeter := r + r + arc_length in
  perimeter = 24 + 4 * PI.
Proof. Admitted.
####