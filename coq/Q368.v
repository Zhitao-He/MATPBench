####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition frustum_volume (r1 r2 h : R) : R :=
  (1 / 3) * pi * h * (r1 ^+ 2 + r1 * r2 + r2 ^+ 2).

Theorem truncated_cone_volume :
  frustum_volume 8 4 6 = 224 * pi.
Proof. Admitted.
####