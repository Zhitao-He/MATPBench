####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition side_length : R := 2%:R.
Definition cube_center : 'rV[R]_3 := \row_(i < 3) (side_length / 2%:R).

(* Volume of pyramid with base area A and height h *)
Definition pyramid_volume (A h : R) : R := (A * h) / 3%:R.

Theorem pyramid_volume_correct :
  let base_area := side_length * side_length in
  let height := side_length / 2%:R in
  pyramid_volume base_area height = (4%:R / 3%:R).
Proof. Admitted.
####