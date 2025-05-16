####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem lena_wisconsin_parallel_circumference :
  let equator_circumference := 25100%:R in
  let R_earth := equator_circumference / (2 * PI) in
  let latitude_deg := 45%:R in
  let latitude_rad := (PI / 4) in
  let parallel_radius := R_earth * cos latitude_rad in
  let parallel_circumference := 2 * PI * parallel_radius in
  Rfloor (parallel_circumference / 100) * 100 = 17700.
Proof. Admitted.
####