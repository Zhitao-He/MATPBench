####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem silo_volume_elliott_farms :
  let r := 5%:R in (* radius in meters, since diameter = 10 m *)
  let h_total := 27%:R in
  let h_cyl := (2%:R / 3%:R) * h_total in
  let h_cone := (1%:R / 3%:R) * h_total in
  let v_cylinder := pi * r ^+ 2 * h_cyl in
  let v_cone := (1%:R / 3%:R) * pi * r ^+ 2 * h_cone in
  v_cylinder + v_cone = 525%:R * pi.
Proof. Admitted.
####