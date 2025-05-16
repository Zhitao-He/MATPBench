####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_area_vertex_r :
  let O := (0 : R, 0 : R) in
  let A := (0 : R, 8 : R) in
  forall r : R,
    let B := (r, 0 : R) in
    let area := (Num.Theory.Rabs (0 - 0) * (8 - 0) - (0 - r) * (0 - 0)) / 2 in
    area = 40 -> r = 10.
Proof. Admitted.
####