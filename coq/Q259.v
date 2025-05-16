####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem spherical_surface_area_in_cylinder :
  let cylinder_radius := 2.5%:R in
  let cylinder_height := 10%:R in
  let sphere_radius := cylinder_radius in
  let surface_area := 4 * Num.pi * (sphere_radius ^+ 2) in
  surface_area = 785%:R.
Proof. Admitted.
####