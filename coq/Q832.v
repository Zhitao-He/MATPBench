####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E : R^2.
Variable x : R.

Hypotheses
  (H_AB : norm (A - B) = 2)
  (H_CD : norm (C - D) = 5)
  (H_AE : norm (A - E) = x - 1)
  (H_ED : norm (E - D) = x + 5)
  (H_BE : exists l1 : R, 0 < l1 < 1 /\ E = (1 - l1) *: B + l1 *: A)
  (H_CE : exists l2 : R, 0 < l2 < 1 /\ E = (1 - l2) *: C + l2 *: D).

Theorem length_AE_is_4 : norm (A - E) = 4.
Proof. Admitted.
####