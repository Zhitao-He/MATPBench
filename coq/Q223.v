####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
From mathcomp Require Import trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sector_area_23deg_5cm
  :
  let r : R := 5 in
  let theta_deg : R := 23 in
  let theta : R := (23 * PI) / 180 in
  let area : R := (r ^+ 2) * theta / 2 in
  round2 area = 7352.
Proof. Admitted.
####