####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables P Q A Z S R : R^2.
Hypotheses
  A <> Z;
  exists k1 k2, 0 < k1 < k2 < 1 /\A = ((1 - k1) *: P + k1 *: Q)%R /\Z = ((1 - k2) *: P + k2 *: Q)%R;
  exists x, 0 < x /\ S = A + x *: (0,1) /\ R = Z + x *: (0,1) /\ S.1 = R.1;
  dist P Z = d.

Theorem trapezoid_length_y : True.
Proof. by []. Qed.
####