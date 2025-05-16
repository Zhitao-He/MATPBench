####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals rat.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem arc_length_80_deg_inner_circle
  (r_big r_small : R)
  (Hpos : 0 < r_small)
  (Hratio : r_small = (1/2) * r_big)
  (Hcirc : 2 * PI * r_big = 36) :
  let arc_angle_deg := 80 in
  let arc_angle_rad := (arc_angle_deg * PI) / 180 in
  let arc_length := arc_angle_rad * r_small in
  (arc_length = 4 <-> arc_angle_deg = 80 /\ r_small = 9 / PI).
Proof. Admitted.
####