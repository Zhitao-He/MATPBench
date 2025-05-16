####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variables A D C B : R.

Hypothesis points_order : A < D < C < B.

Hypothesis CB_eq : B - C = 4.
Hypothesis DB_eq : B - D = 7.
Hypothesis D_mid_AC : D = (A + C) / 2.

Theorem segment_AC_eq_6 :
  C - A = 6.
Proof. Admitted.

End geometry_problem.
####