####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals matrix geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := 'rV[R]_2.

Definition area_triangle (A B C : point) : R :=
  1%:R / 2 * `| (B - A) 0 0 * (C - A) 0 1 - (B - A) 0 1 * (C - A) 0 0 |.

Theorem area_triangle_midpoints
  :
  let A := row2 0 0 in
  let B := row2 15 0 in
  let C := row2 0 24 in
  let D := ((A + C) / 2) in
  let E := ((A + B) / 2) in
  let F := ((B + C) / 2) in
    area_triangle D E F = 45 ^ 2.
Proof. Admitted.
####