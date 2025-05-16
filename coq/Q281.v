####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pi := Num.Theory.pi.

Definition area_of_ring (r1 r2 : R) : R :=
  pi * (r2 ^+ 2 - r1 ^+ 2).

Theorem shaded_ring_ratio_circles_1_2_3_4 :
  area_of_ring 1 2 / area_of_ring 3 4 = 7.
Proof. Admitted.
####