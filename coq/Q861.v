####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometric2D ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D : 'rV[R]_2.
Hypotheses
  HCB    : exists k, 0 < k < 1 /\D = k *: B + (1 - k) *: C;
  HCBlen : norm (B - C) = 29;
  HCDlen : norm (D - C) = 6;
  H_perp : ((A - D) *m (B - C)^T) ``_0_0 = 0;
  HABlen : norm (A - B) = 13.

Definition area_tri P Q R := `|((Q - P) `\_x` (R - P))| / 2.

Theorem total_area : area_tri A B C + area_tri C D A = 84.
Proof. by []. Qed.
####