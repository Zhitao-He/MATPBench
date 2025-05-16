####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem composite_solid_volume_rectangular_prism_with_removed_pyramid :
  let L := 15%:R in                (* length in cm *)
  let W := 9%:R in                 (* width in cm *)
  let H := 8%:R in                 (* height in cm *)
  (* The removed pyramid: its base is one of the 15cm x 9cm faces,
     its apex is at the opposite vertex, with the apex height = 8cm (the prism's height) *)
  let prism_volume := L * W * H in
  let pyramid_volume := (1%:R / 3%:R) * L * W * H in
  let composite_volume := prism_volume - pyramid_volume in
    composite_volume = 720%:R.
Proof. Admitted.
####