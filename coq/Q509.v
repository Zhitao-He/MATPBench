####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D : R^2.

Hypothesis angle_ABD : angle A B D = 130.
Hypothesis angle_DBC : angle D B C = 95.
Hypothesis angle_sum_ABC : angle A B C + angle C B D = 180.

Theorem find_x_value :
  angle C B A = 135.
Proof.
  have H1 : angle A B C = 180 - angle D B C by rewrite angle_sum_ABC.
  rewrite H1 angle_DBC; field.
Qed.
####