####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables H D B F A : 'rV[R]_2.
Variable x : R.

Hypothesis H_DHB : angle D H B = 38%:R.
Hypothesis H_FDA : angle F D A = 52%:R.
Hypothesis H_HB_perp_DB : orthogonal (H - B) (D - B).

Theorem measure_angle_HDF : angle H D F = 128%:R.
Proof.
  (* Using adjacent complementary angles *)
  have H_adj_compl : angle H D F + angle F D A = 180%:R by apply: adjacent_complementary_angle.
  rewrite H_FDA in H_adj_compl.
  (* Solve for angle HDF *)
  have H_eq : angle H D F = 180%:R - 52%:R by move: H_adj_compl => /eqP ->.
  by rewrite H_eq; field.
Qed.
####