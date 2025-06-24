####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define the four points of the quadrilateral *)
Definition Q : R * R := (0, 12).
Definition A : R * R := (2, 12).
Definition B : R * R := (12, 0).
Definition O : R * R := (0, 0).

(* Function to calculate the area of a quadrilateral using the shoelace formula *)
Definition area_quadrilateral (p1 p2 p3 p4 : R * R) : R :=
  let '(x1, y1) := p1 in
  let '(x2, y2) := p2 in
  let '(x3, y3) := p3 in
  let '(x4, y4) := p4 in
  0.5 * abs ((x1 * y2 - x2 * y1) + (x2 * y3 - x3 * y2) + (x3 * y4 - x4 * y3) + (x4 * y1 - x1 * y4)).

(* Theorem to prove the area of QABO is 84 *)
Theorem area_QABO : 
  area_quadrilateral Q A B O = 84%:R.
Proof. Admitted.
####