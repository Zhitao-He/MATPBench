####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables K J L : 'rV[R]_2.
Variable r : R.

Hypothesis HK_center : K = (0, 0).
Hypothesis HJ_length : `|J - K| = 11.
Hypothesis HL_length : `|L - K| = 11.
Hypothesis H_angle_JKL : angle J K L = (65 * PI) / 180.

Definition sector_area (O A B : 'rV[R]_2) (r : R) (theta : R) :=
  (theta / (2 * PI)) * (PI * r ^+ 2).

Theorem area_of_sector_KJL :
  sector_area K J L r (65 * PI / 180) = 7139 * PI / 72.
Proof.
  have H_r : r = 11 by rewrite /r; apply/eqP; rewrite eqr_sym; apply/eqP; exact: HJ_length.
  rewrite /sector_area H_r (eq_irrelevance _ _) (eq_irrelevance _ _).
  rewrite H_angle_JKL.
  (* Simplify the expression *)
  have H_eq : (65 * PI / 180) / (2 * PI) * (PI * 11 ^+ 2) = 7139 * PI / 72 by field.
  by rewrite H_eq.
Qed.
####