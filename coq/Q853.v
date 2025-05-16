####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition area2 (A B C : point) : R :=
  ((px B - px A) * (py C - py A) - (px C - px A) * (py B - py A)) / 2.

Theorem area_triangle_ACB_80 :
  let D := mkPoint 0 0 in
  let A := mkPoint 0 10 in
  let C := mkPoint 8 0 in
  let B := mkPoint 24 0 in
    (`|area2 A C B| = 80) /\
    (distance A D = 10) /\
    (distance D C = 8) /\
    (distance C B = 16) /\
    (distance A B = 26).
Proof. Admitted.
####