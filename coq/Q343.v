####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := R * R.

Definition A : point := (0, 1).
Definition B : point := (1, 3).
Definition C : point := (5, 2).
Definition D : point := (4, 0).

Definition shoelace4 (A B C D : point) : R :=
  let: (x1, y1) := A in
  let: (x2, y2) := B in
  let: (x3, y3) := C in
  let: (x4, y4) := D in
  (1%:R/2%:R) *
    `| x1 * y2 + x2 * y3 + x3 * y4 + x4 * y1
     - (y1 * x2 + y2 * x3 + y3 * x4 + y4 * x1) |.

Theorem area_ABCD_is_9 :
  shoelace4 A B C D = 9.
Proof. Admitted.
####