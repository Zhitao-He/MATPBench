####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry point2D.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E N : 'rV[R]_2.
Hypotheses
  Hright1 : is_right_angle C B N;
  Hright2 : is_right_angle B A D;
  Hright3 : is_right_angle N E B;
  HCBE : norm (C - B) = 8;
  HCDE : norm (C - D) = 12;
  HNBB : norm (N - B) = 5;
  HBAD : norm (B - A) = 5;
  H_E_on_CN : exists k, 0 < k < 1 /\E = C + k *: (N - C);
  H_B_on_CD : exists m, 0 < m < 1 /\B = C + m *: (D - C);
  H_A_on_CD : exists n, 0 < n < 1 /\A = C + n *: (D - C).
Definition area_triangle P Q R := `|((Q - P) `\_x` (R - P))| / 2.
Theorem compute_area : area_triangle A B C + area_triangle C D E + area_triangle E N B = 84.
Proof. by []. Qed.
####