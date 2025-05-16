####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables A B C D : point.

Variable x : R.

Hypothesis quad_convex : convex_quadrilateral A B C D.

Hypothesis angle_A : angle D A B = 3 * x.
Hypothesis angle_D : angle C D A = x.
Hypothesis angle_B : angle A B C = pi / 2.

Theorem quadrilateral_angle_C_90 :
  angle B C D = pi / 2.
Proof. Admitted.
####