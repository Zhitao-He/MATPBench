####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleGeometry.

Variable R : realType.

Variables A B C D E F G H : 'hP[R].

Hypotheses
  (DE_parallel_FG : are_parallel D E F G)
  (C_on_DE : on_line C D E)
  (A_not_on_DE : ~ on_line A D E)
  (C_on_segment_AF_AG : exists p : R, 0 < p < 1 /\ collinear A F G /\ C = (1-p)*:A + p*:G)
  (right_C : angle A C B = PI / 2)
  (angle_BAC_60 : angle B A C = PI / 3)
  (A_vertex_60 : angle C A G = PI / 3)
  (H_on_DE : on_line H D E)
  (H_on_AB : between A H B)
  (AB_bisects_CAG : angle B A G = angle C A B)
  (C_between_A_and_DE : between A C H /\ between C H E)
  (A_between_F_and_G : between F A G).

Theorem triangle_right_bisect_30deg : angle B C H = PI / 6.
Proof.
Admitted.

End TriangleGeometry.
####