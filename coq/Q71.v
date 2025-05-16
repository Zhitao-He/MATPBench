####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem regular_pentagon_ring_perimeter :
  let pentagon_perimeter := 65%:R in
  let inner_polygon_sides := 10 in
  let P := 130%:R in
  (* Each of 10 regular pentagons (side length s = pentagon_perimeter / 5) arranged
     in a ring such that their adjacent sides are joined. The inner regular
     decagon, formed as the boundary inside the ring, has perimeter P. *)
  P = inner_polygon_sides * (pentagon_perimeter / 5)
  ->
  P = 130%:R.
Proof. Admitted.
####