####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem angle_OBC_in_acute_triangle
  (A B C O : 'rV[R]_2)
  (h_neq : A <> B /\ B <> C /\ C <> A)
  (h_circum : circum_center A B C = Some O)
  (h_acute : 0 < angle B A C < pi/2 /\ 0 < angle C B A < pi/2 /\ 0 < angle A C B < pi/2)
  (h_angle_A : angle B A C = (68%:R *~: (pi / 180)))
  :
  angle O B C = (22%:R *~: (pi / 180)).
Proof. Admitted.
####