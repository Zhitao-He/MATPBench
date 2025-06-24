####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D S : 'rV[R]_2.
Variable x : R.

Hypothesis H_CB : `|C - B| = 40.
Hypothesis H_DB : `|D - B| = 38.
Hypothesis H_SD : `|S - D| = 28.
Hypothesis H_perp_BD_SD : orthogonal (B - D) (S - D).
Hypothesis H_parallelogram_ACBS : parallelogram A C B S.

Theorem area_ACBS : `|AreaOfQuadrilateral A C B S| = 1520.
Proof.
  (* Using parallelogram properties and area formula *)
  have H_area_parallelogram : `|AreaOfQuadrilateral A C B S| = `|B - D| * `|S - D| by apply: parallelogram_area_formula_common.
  rewrite H_DB H_SD in H_area_parallelogram.
  (* Solve for the area *)
  have H_eq : `|AreaOfQuadrilateral A C B S| = 38 * 28 by field in H_area_parallelogram.
  by rewrite H_eq; field.
Qed.
####