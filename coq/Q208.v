####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D P : 'rV[R]_2.

Hypotheses
  CD_neq : C != D /\n  CD_len : normr (D - C) = 6 /
  CB_len : normr (B - C) = 2 /
  angle_BCD_90 : `[< (B - C), (D - C) >] = 0 /
  on_circle_C : normr (C - ((C + D) / 2%:R)) = 3 /
  on_circle_D : normr (D - ((C + D) / 2%:R)) = 3 /
  P_on_AD : colinear A P D.

Theorem find_PB_length : normr (P - B) = 4.
Proof.
admit.
Qed.
####