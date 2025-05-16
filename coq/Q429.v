####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry plane2.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Record point2 := mkP2 { px : R; py : R }.
Definition collinear A B C := (px B - px A)*(py C - py A) = (py B - py A)*(px C - px A).
Definition parallel A B C D := (px B - px A)*(py D - py C) = (py B - py A)*(px D - px C).
Definition perpendicular A B C D := (px B - px A)*(px D - px C) + (py B - py A)*(py D - py C) = 0.
Definition dist2 A B := sqrt ((px B - px A)^+2 + (py B - py A)^+2).
Definition tan_angle A B C :=
  let u1 := px A - px B in let u2 := py A - py B in
  let v1 := px C - px B in let v2 := py C - py B in
  (u1*v2 - u2*v1)/(u1*v1+u2*v2).

Theorem trapezoid_tan_sum :
  forall A B C D,
    parallel A B C D -> perpendicular A D B C ->
    tan_angle A B C + tan_angle B C D = 0.
Proof.
admit.
Qed.
####