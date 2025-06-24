####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables P Q R' S T U V W : 'rV[R]_2.

Hypotheses
  (area_PQR : area_triangle P Q R' = 1)
  (area_STU : area_triangle S T U = 1)
  (mid_U : U = midpoint Q R')
  (mid_W : W = midpoint P Q)
  (mid_V : V = midpoint P R')
  (mid_R_STU : R = midpoint S T)
  (mid_V_STU : V = midpoint S U)
  (mid_W_STU : W = midpoint T U).

Definition parallelogram_area (A B C D : 'rV[R]_2) :=
  let AB := B - A in
  let AD := D - A in
  `|AB ** AD|`.

Theorem area_UVRW_is_half : 
  parallelogram_area U V R' W = 1 / 2.
Proof. Admitted.
####