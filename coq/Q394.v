####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Record point2 := mkPoint2 { px : R; py : R }.
Definition collinear A B C := (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).
Definition area_triangle A B C := (1%:R/2) * Num.abs (px A * (py B - py C) + px B * (py C - py A) + px C * (py A - py B)).

Theorem coplanar_adjacent_squares_ABE_area :
  let A := mkPoint2 0 0 in
  let B := mkPoint2 5 0 in
  let H := mkPoint2 0 5 in
  let G := mkPoint2 5 5 in
  let C := mkPoint2 15 0 in
  let D := mkPoint2 15 10 in
  let F := mkPoint2 10 10 in
  let E := mkPoint2 10 5 in
  [/\collinear A B G /\collinear H G D /\collinear F D C &
     area_triangle A B E = 12%:R].
Proof.
admit.
Qed.
####