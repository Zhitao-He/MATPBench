####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cube_sphere_volume_difference :
  let a := 30%:R in
  let V_cube := a ^+ 3 in
  let r := a / 2 in
  let V_sphere := (4%:R / 3%:R) * PI * r ^+ 3 in
  V_cube - V_sphere = 27000%:R - 4500%:R * PI.
Proof. Admitted.
####