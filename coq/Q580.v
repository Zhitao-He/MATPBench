####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.
Variable x : R.

Hypothesis H_AB : `|A - B| = 15 * x + 9.
Hypothesis H_AC : `|A - C| = 7 * x.
Hypothesis H_BC : `|B - C| = 11 * x + 5.
Hypothesis H_perimeter : `|A - B| + `|A - C| + `|B - C| = 320.

Theorem find_CB_length : `|B - C| = 107.
Proof.
  (* Using triangle perimeter formula *)
  have H_sum : `|A - B| + `|A - C| + `|B - C| = (15 * x + 9) + (7 * x) + (11 * x + 5) by apply: H_perimeter.
  rewrite H_AB H_AC H_BC in H_sum.
  (* Solve for x *)
  have H_eq : 33 * x + 14 = 320 by field in H_sum.
  have H_x : x = (320 - 14) / 33 by move: H_eq => /eqP ->; field.
  by rewrite H_x in H_BC; field.
Qed.
####