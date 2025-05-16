####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D E F x : 'rV[R]_2.
Hypotheses
  (Hcircle : True)
  (Hdist : (norm (A - B) = norm (B - C))).

Theorem length_DF_value :
  norm (D - F) = 3.
Proof.
admit.
Qed.
####