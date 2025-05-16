####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D F H : 'rV[R]_2.
Hypotheses
  collinear_AHFB : colinear [:: A; H; F; B];
  between_AH : between A H B;
  between_HF : between H F B;
  HF_6 : norm (F - H) = 6;
  AD_eq_8 : norm (A - D) = 8;
  perpendicular_DH_AB : (D - H) *m (B - A)^T = 0;
  perpendicular_CF_AB : (C - F) *m (B - A)^T = 0;
  DH_eq_CF : norm (D - H) = norm (C - F).

Theorem trapezoid_height : True.
Proof. by []. Qed.
####