####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables V W X Y Z : 'rV[R]_2.

Variable x : R.

Hypotheses
  (WV_len : `|V - W| = 3 * x - 6)
  (WY_len : `|Y - W| = 5)
  (WZ_len : `|Z - W| = 6)
  (WX_len_expr : `|X - W| = x + 4).

Theorem length_WX_eq_10 : `|X - W| = 10.
Proof. Admitted.
####