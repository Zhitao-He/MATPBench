####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C : 'rV[R]_2.

Hypothesis triangle_ABC : colinear R A B C = false.
Hypothesis right_angle_C : angle B C A = PI/2.

Theorem value_cos_measureofangle_ABC :
  cos (angle A B C) = 7/25.
Proof. Admitted.
####