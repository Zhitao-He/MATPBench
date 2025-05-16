####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem aime_1985_square_inside_square_area :
  let A := (0 : R, 0 : R) in
  let B := (1 : R, 0 : R) in
  let C := (1 : R, 1 : R) in
  let D := (0 : R, 1 : R) in
  forall n : nat,
    2 <= n ->
    let P := (1 / n%:R, 0 : R) in (* On AB, closest to B *)
    let Q := (1 : R, 1 - 1 / n%:R) in (* On BC, closest to C *)
    let Rpt := (1 - 1 / n%:R, 1 : R) in (* On CD, closest to D *)
    let S := (0 : R, 1 / n%:R) in (* On DA, closest to A *)
    (* Lines: each vertex to its opposite side's division point *)
    let f1 := fun t : R => (t, t * (P.2 - A.2) / (P.1 - A.1)) in
    let
####