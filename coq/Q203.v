####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sqrt.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem semicircle_water_surface_width :
  let O := (0,0) : R * R in
  let r := 4%:R in
  let h := 1%:R in
  let A' := (- sqrt 15, h) in
  let B' := (  sqrt 15, h) in
  exists width_water : R,
    width_water = B'.1 - A'.1 /\width_water = 2 * sqrt 15.
Proof.
admit.
Qed.
####