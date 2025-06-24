####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables B Q C : 'rV[R]_2.
Variable x : R.

Hypothesis H_BQ : `|B - Q| = 6`.
Hypothesis H_QC : `|Q - C| = 8`.
Hypothesis H_line_addition : `|B - Q| + `|Q - C| = `|B - C|`.

Theorem find_x_value : x = 2.
Proof.
  (* Using segment addition postulate *)
  have H_BC : `|B - C| = `|B - Q| + `|Q - C|` by apply: H_line_addition.
  rewrite H_BQ H_QC in H_BC.
  (* Solve for x *)
  have H_eq : x = 6 + 8 by move/eqP: H_BC.
  by move: H_eq => /eqP ->; field.
Qed.
####