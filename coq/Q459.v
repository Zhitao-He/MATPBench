####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables b h m n S1 S2 S3 S4 : R.
Hypotheses
  (hb : 0 < b) (hh : 0 < h)
  (hm : 0 < m < b) (hn : 0 < n < h)
  (H_S1 : S1 = m * n / 2)
  (H_S2 : S2 = (b - m) * n / 2)
  (H_S3 : S3 = (b - m) * (h - n) / 2)
  (H_S4 : S4 = m * (h - n) / 2).

Theorem rectangle_area_relation :
  S1 + S3 = S2 + S4.
Proof.
admit.
Qed.
####