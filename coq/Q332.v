####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D E : 'rV[R]_2.
Hypotheses
  HA : A = row2 0 0 /\HB : B = row2 4 0 /\HC : C = row2 0 5 /\HD : D = row2 4 4.
Hypothesis Hright1 : angle_at A B C = PI/2.
Hypothesis Hright2 : angle_at B A D = PI/2.
Hypothesis HE : exists t s, 0 <= t <= 1 /\ 0 <= s <= 1 /\ E = D + t *: (C - D) /\ E = A + s *: (B - A).

Theorem intersection_properties : True.
Proof.
admit.
Qed.
####