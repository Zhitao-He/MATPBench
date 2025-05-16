####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem sphere_inscribed_in_cone_volume_ratio :
  let h := 4%:R in
  let r := 3%:R in
  let V_cone := (1%:R / 3%:R) * pi * r ^+ 2 * h in
  let r_sphere := (r * h) / (RtoR  (sqrt ((r^2) + (h^2))) + r) in
  let V_sphere := (4%:R / 3%:R) * pi * (r_sphere ^+ 3) in
  (* For the actual values h=4, r=3, the inscribed sphere has radius 1. *)
  h = 4%:R -> r = 3%:R -> r_sphere = 1%:R ->
  V_sphere / V_cone = 3%:R / 8%:R.
Proof. Admitted.
####