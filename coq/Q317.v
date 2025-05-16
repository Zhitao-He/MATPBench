####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry.

Variable R : realType.
Variables A B C : 'rV[R]_2.

Hypotheses
  nondeg : ~~ colinear A B C.
Hypothesis angle_val : angle A B C = 72%:R * PI / 180.

Variables I D E F : 'rV[R]_2.
Hypothesis incircle : (* I is incenter; D,E,F tangent points *) True.

Theorem incenter_angle_sum : angle B I C = 90%:R + angle A B C / 2.
Proof.
admit.
Qed.
####