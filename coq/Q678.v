####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.
Variable x y : R.

Hypothesis H_AB : `|A - B| = 3.
Hypothesis H_AC : `|A - C| = 5.
Hypothesis H_CD : `|C - D| = 7 / 2.
Hypothesis H_DE : `|D - E| = 3.
Hypothesis H_EB_parallel_DC : parallel (E - B) (D - C).

Theorem find_BE_length : `|B - E| = 21 / 10.
Proof.
  (* Using parallel lines and similar triangles *)
  have H_corresponding_angles : angle E B A = angle D C A by apply: parallel_property_corresponding_angle.
  have H_triangle_similarity : similar A B E A C D by apply: similar_triangle_judgment_aa.
  have H_ratio_property : `|B - E| / `|A - B| = `|D - C| / `|A - C| by apply: similar_triangle_property_line_ratio.
  rewrite H_AB H_CD in H_ratio_property.
  (* Solve for |B - E| *)
  have H_eq : `|B - E| / 3 = (7 / 2) / 5 by field in H_ratio_property.
  by rewrite H_eq; field.
Qed.
####