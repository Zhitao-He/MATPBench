####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Variable R : realType.

Theorem sphere_surface_area_11cm :
  let r := 11 in
  let surface_area := 4 * PI * r^2 in
  `|surface_area - 152053| < 0.005.
Proof. Admitted.
####