####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals realfun.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition half_cone_base_radius : R := 3.
Definition half_cone_height : R := 9.

Definition volume_half_cone (r h : R) : R :=
  (/2) * (/3) * Num.pi * r ^+ 2 * h.

Theorem half_cone_volume_value :
  volume_half_cone half_cone_base_radius half_cone_height \approx 1045.
Proof. Admitted.
####