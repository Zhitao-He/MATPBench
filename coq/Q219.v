####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem height_of_tower_problem :
  let d := 29%:R in
  exists h : R,
    let theta1 := (10%:R * PI) / 180%:R in
    let theta2 := (22%:R * PI) / 180%:R in
    (h = d * (tan theta2 * tan theta1) / (tan theta2 - tan theta1)) /\
    (round h = 9).
Proof. Admitted.
####