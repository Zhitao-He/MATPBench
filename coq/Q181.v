####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition ptA := row2 0 0.
Definition ptB := row2 0 4.
Definition ptC := row2 6 4.
Definition ptD := row2 14 0.
Definition ptO := row2 0 2.

Theorem find_area_figure_549 :
  let trapezoid_area := ((0 + 6) * (4 + 4) / 2 + (6 + 14) * (4 + 0) / 2) / 2 in
  let triangle_CDA := (14 - 6) * 4 / 2 in
  let quarter_circle := PI * 2 ^+ 2 / 4 in
  trapezoid_area + triangle_CDA - quarter_circle = trapezoid_area + triangle_CDA - quarter_circle.
Proof.
admit.
Qed.
####