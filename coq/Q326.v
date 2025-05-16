####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition circle_center : R * R := (3%:R, 1%:R).
Definition circle_point : R * R := (8%:R, 1%:R).
Definition pi := PI.

Definition radius : R :=
  let: (cx, cy) := circle_center in
  let: (px, py) := circle_point in
  Num.sqrt ((px - cx)^+2 + (py - cy)^+2).

Theorem area_of_circle :
  radius = 5%:R ->
  let area := pi * (radius)^+2 in
  area = 25%:R * pi.
Proof. Admitted.
####