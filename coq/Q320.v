####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_two_tangent_circles_shaded_area :
  let pi := PI in
  (* The rectangle has width 4 and height 2 *)
  let rect_area := 4%:R * 2%:R in
  (* Each circle has radius 1; circles are externally tangent and each tangent to three sides of the rectangle *)
  let circle_area := pi * (1 ^+ 2) in
  let shaded_area := rect_area - 2 * circle_area in
  shaded_area = 8 - 2 * pi.
Proof. Admitted.
####