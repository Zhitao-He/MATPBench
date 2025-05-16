####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Outer square ABCD has side length 4 *)
Definition pt (x y : R) : R * R := (x, y).
Definition square_corners := [:: pt 0 0; pt 4 0; pt 4 4; pt 0 4].

(* Midpoints of sides *)
Definition mAB := pt 2 0.
Definition mBC := pt 4 2.
Definition mCD := pt 2 4.
Definition mDA := pt 0 2.

(* Inner square: vertices at the midpoints *)
Definition inner_square_corners := [:: mAB; mBC; mCD; mDA].

(* The shaded region is the area inside the outer square and outside the inner square formed by joining the midpoints *)
Definition area_square (a : R) := a * a.

Theorem shaded_area_square_midpoints :
  let S_outer := area_square 4 in
  let S_inner := area_square 2 in
  S_outer - S_inner = 4.
Proof. Admitted.
####