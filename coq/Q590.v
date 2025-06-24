####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles trigonometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A C D : 'rV[R]_2.
Variable x y : R.

Hypothesis H_AC : `|A - C| = 5 * sqrt(26).
Hypothesis H_AD : `|A - D| = 25.
Hypothesis H_CB : `|C - B| = sqrt(26).
Hypothesis H_CD : `|C - D| = 5.
Hypothesis H_DB : `|D - B| = 1.
Hypothesis H_right_ADC : orthogonal (A - C) (D - C).

Theorem find_cos_CAD : cos (angle C A D) = (5 * sqrt(26)) / 26.
Proof.
  (* Using cosine theorem in triangle ADC *)
  have H_cosine_ADC : cos (angle C A D) = (`|A - C|^2 + `|A - D|^2 - `|C - D|^2) / (2 * `|A - C| * `|A - D|) by apply: cosine_theorem.
  rewrite H_AC H_AD H_CD in H_cosine_ADC.
  (* Simplify the expression *)
  have H_eq : cos (angle C A D) = (50 + 625 - 25) / (2 * 5 * sqrt(26) * 25) by field in H_cosine_ADC.
  by rewrite H_eq; field.
Qed.
####