####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := R * R.

Definition Q : point := (0,12).
Definition A : point := (2,12).
Definition B : point := (12,0).
Definition O : point := (0,0).

Definition area_quadrilateral (p1 p2 p3 p4 : point) : R :=
  let '(x1,y1) := p1 in
  let '(x2,y2) := p2 in
  let '(x3,y3) := p3 in
  let '(x4,y4) := p4 in
  ((x1*y2 - x2*y1) + (x2*y3 - x3*y2) + (x3*y4 - x4*y3) + (x4*y1 - x1*y4)) / 2.

Theorem area_QABO :
  area_quadrilateral Q A B O = 84.
Proof. Admitted.
####