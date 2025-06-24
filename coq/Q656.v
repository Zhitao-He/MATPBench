####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry areas.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables W X Y Z : 'rV[R]_2.
Variable d1 d2 : R.

Hypothesis H_area : area_rhombus W X Y Z = 100.
Hypothesis H_diagonal_XZ : `|X - Z| = 10.
Hypothesis H_rhombus : is_rhombus W X Y Z.

Theorem find_WY_length : `|W - Y| = 20.
Proof.
  (* Using rhombus area formula: area = (d1 * d2) / 2 *)
  have H_area_formula : area_rhombus W X Y Z = (`|X - Z| * `|W - Y|) / 2 by apply: rhombus_area_formula.
  rewrite H_diagonal_XZ in H_area_formula.
  (* Solve for |W - Y| *)
  have H_eq : 100 = (10 * `|W - Y|) / 2 by field in H_area_formula.
  by rewrite H_eq; field.
Qed.
####