####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CubeSphereVolume.

Variable R : realType.

(* Given values *)
Let cube_edge := 30%:R.
Let cube_volume := cube_edge ^+ 3.
Let sphere_radius := cube_edge / 2%:R.
Let sphere_volume := (4%:R / 3%:R) * PI * (sphere_radius ^+ 3).

Theorem volume_difference :
  cube_volume - sphere_volume = 27000%:R - 4500%:R * PI.
Proof. Admitted.

End CubeSphereVolume.
####