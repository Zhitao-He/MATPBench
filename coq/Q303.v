####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section geometry_problem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis AD_eq_BD : norm (A - D) = norm (B - D).
Hypothesis BD_eq_CD : norm (B - D) = norm (C - D).
Hypothesis angle_BCA_40 : angle B C A = (40%:R * pi) / 180.

Theorem angle_BAC_90 :
  angle B A C = (90%:R * pi) / 180.
Proof. Admitted.

End geometry_problem.
####