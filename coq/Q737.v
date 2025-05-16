####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section quadrilateral_problem.

Variable R : realType.

Variables A B C D P : 'e2[R].

Hypothesis quadrilateral_distinct :
  A <> B /\ B <> C /\ C <> D /\ D <> A.

Hypothesis quadrilateral_parallel :
  (B - A) = (C - D).

Hypothesis right_angle :
  colinear D A C = false /\
  [angle A P D, A P C] = pi / 2.

Hypothesis point_P :
  P \is_on [line of (A, C)].

Variable x : R.

Hypothesis angle_DPB :
  [angle D P B] = x.

Theorem value_of_x :
  x = 35%:R.
Proof. Admitted.

End quadrilateral_problem.
####