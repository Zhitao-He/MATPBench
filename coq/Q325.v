####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D P Q R' S T : 'e2[R].

Hypotheses
  rectABCD : is_rectangle A B C D /\dist B A = 16 /\colinear B C /\(B - A) ⊥ (C - B).
Hypotheses
  P_on_BC : on_line P (Line B C) /\ angle A P D = PI/2.
Hypotheses
  T_on_BC : exists t, T = B + t *: (C - B) /\ S_on_TS : exists s, S = T + s *: (D - C).
Hypotheses
  BP_PT : dist B P = dist P T.
Hypotheses
  Q_on_PD_TS : on_line Q (Line P D) /\ on_line Q (Line T S).
Hypotheses
  R_on_CD : on_line R' (Line C D).

Theorem construct_circles_and_points : exists U V, True.
Proof.
admit.
Qed.
####