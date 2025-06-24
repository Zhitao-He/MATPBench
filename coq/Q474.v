####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variable y : R.

Hypothesis angle_eq : 4 * y - 10 = 3 * y + 5.

Theorem y_value_15 :
  y = 15%:R.
Proof.
  rewrite -subr_eq0.
  have H : (4 * y - 10) - (3 * y + 5) = y - 15 by field.
  move: angle_eq.
  rewrite H.
  by move=> /eqP.
Qed.
####