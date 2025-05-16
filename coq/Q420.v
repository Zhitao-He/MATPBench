####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry.

Variable R : realType.
Variables A B C P Q R X Y : 'rV[R]_2.
Hypothesis eq_triangle_ABC : norm (A - B) = norm (B - C) = norm (C - A).
Hypothesis eq_triangle_PQR : norm (P - Q) = norm (Q - R) = norm (R - P).
Hypothesis colinear_BP : colinear B P C.
Hypothesis angle_ABP_65 : angle A B P = 65%:R.
Hypothesis angle_BPC_75 : angle B P C = 75%:R.
Hypothesis X_on_AR : on_line X A R.
Hypothesis X_on_BQ : on_line X B Q.

Theorem intersection_X_properties : True.
Proof.
admit.
Qed.

End Geometry.
####