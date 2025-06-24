####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables S T R' : 'rV[R]_2.
Variable x : R.

Hypothesis H_SR : `|S - R'| = 5.
Hypothesis H_TR : `|T - R'| = 3.
Hypothesis H_TS : `|T - S| = 4.
Hypothesis H_perpendicular : orthogonal (T - S) (R' - T).

Theorem find_cos_TSR : cos (angle T S R') = 4 / 5.
Proof.
  (* Using the cosine theorem in triangle TSR *)
  have H_cosine_TSR : cos (angle T S R') = (`|T - S|^2 + `|S - R'|^2 - `|T - R'|^2) / (2 * `|T - S| * `|S - R'|) by apply: cosine_theorem.
  rewrite H_SR H_TR H_TS in H_cosine_TSR.
  (* Simplify the expression *)
  have H_eq : cos (angle T S R') = (16 + 25 - 9) / (2 * 4 * 5) by field in H_cosine_TSR.
  by rewrite H_eq; field.
Qed.
####