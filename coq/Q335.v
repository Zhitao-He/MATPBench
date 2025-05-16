####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cube_surface_area_volume_edge_sum :
  \sum_(s : R | 0 < s /\ 6 * s^2 = s^3 + 5 * s) s = 6.
Proof. Admitted.
####