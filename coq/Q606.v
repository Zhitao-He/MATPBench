####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D : 'rV[R]_2.
Variable x : R.

Hypothesis H_AB : `|A - B| = 36.
Hypothesis H_AD : `|A - D| = 22.
Hypothesis H_angle_BCE : angle B C E = 30%:R.
Hypothesis H_parallelogram : is_parallelogram B C D A.
Hypothesis H_CE_perp_BE : orthogonal (C - E) (B - E).

Theorem perimeter_BCDA : `|B - C| + `|C - D| + `|D - A| + `|A - B| = 116.
Proof.
  (* Using parallelogram properties and perimeter formula *)
  have H_opposite_sides : `|B - C| = `|A - D| /
                          `|C - D| = `|A - B| by apply: H_parallelogram.
  rewrite H_AB H_AD in H_opposite_sides.
  (* Solve for the perimeter *)
  have H_perimeter : `|B - C| + `|C - D| + `|D - A| + `|A - B| = 2 * (`|A - B| + `|A - D|) by field in H_opposite_sides.
  by rewrite H_AB H_AD in H_perimeter; field.
Qed.
####