####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_diagonal_length :
  let A := (0 : R, 12 : R) in
  let B := (0 : R, 0 : R) in
  let C := (12 : R, 12 : R) in
  let D := (12 : R, 0 : R) in
  let dist := fun p q : R * R => sqrt ((p.1 - q.1)^+2 + (p.2 - q.2)^+2) in
  dist(B, C) = 12 * sqrt 2.
Proof. Admitted.
####