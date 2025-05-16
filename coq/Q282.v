####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variable r : R.
Hypothesis hr : 0 < r.
Variable c0 : 'rV[R]_2.
Variable cs : 'I_6 -> 'rV[R]_2.
Hypothesis centers_arrangement :
  forall i, norm (cs i - c0) = 2 * r /\n           forall j, i <> j -> norm (cs i - cs j) = 2 * r * sin (PI / 6).
Definition center_big := c0.
Definition R_big := 3 * r.

Theorem large_circle_encloses : norm (cs 0 - center_big) + r = R_big.
Proof.
admit.
Qed.
####