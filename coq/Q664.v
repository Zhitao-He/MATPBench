####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables V W X Y Z : 'rV[R]_2.
Variable x : R.

Hypothesis H_VW : `|V - W| = 3 * x - 6.
Hypothesis H_WX : `|W - X| = x + 4.
Hypothesis H_YW : `|Y - W| = 5.
Hypothesis H_ZW : `|Z - W| = 6.
Hypothesis H_parallel_YX_VZ : parallel Y X V Z.

Theorem find_WX_length : `|W - X| = 10.
Proof.
  (* Using properties of parallel lines and similar triangles *)
  have H_alternate_angles : angle W Y X = angle W V Z by apply: parallel_property_alternate_interior_angle.
  have H_triangle_similarity : similar W V Z W X Y by apply: similar_triangle_judgment_aa.
  have H_ratio_property : `|V - Z| / `|W - Z| = `|W - X| / `|W - Y| by apply: similar_triangle_property_line_ratio.
  rewrite H_VW H_WX H_YW H_ZW in H_ratio_property.
  (* Solve for x *)
  have H_eq : (3 * x - 6) / 6 = (x + 4) / 5 by field in H_ratio_property.
  by rewrite H_eq; field.
Qed.
####