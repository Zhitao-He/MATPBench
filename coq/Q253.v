####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem total_surface_area_hollow_cylinder :
  let r_in := 10%:R in             (* inner radius in cm *)
  let r_out := 11%:R in            (* outer radius in cm *)
  let h := 24%:R in                (* height in cm *)
  let piR := PI in
  let sa := (2 * piR * (r_out * h)) + (2 * piR * (r_in * h)) + (2 * piR * (r_out^2 - r_in^2)) in
  round_with (ndigits:=2) sa = 329867.
Proof. Admitted.
####