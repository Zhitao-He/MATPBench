####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section inscribed_right_angle.

Variable R : realType.

Variables (O A B C : 'rV[R]_2).

Hypotheses
  (circle_def : dist O A = dist O B /\ dist O B = dist O C /\ dist O C = dist O A)
  (right_triangle : [Colinear A B C] = false)
  (diameter : [onsegment R A C] O)
  (on_circle : forall X, X \in [::A;B;C] -> dist O X = dist O A).

Definition m_angle2 := angle B A C.

Theorem inscribed_angle_semicircle :
  circle_def ->
  diameter ->
  on_circle A (mem_head A [::A;B;C]) ->
  on_circle B (mem_head B [::A;B;C]) ->
  on_circle C (mem_head C [::A;B;C]) ->
  m_angle2 = PI/2.
Proof. Admitted.

End inscribed_right_angle.
####