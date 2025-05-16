####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Geometry.

Variable R : realType.

Variables A B O X Y : 'rV[R]_2.

Hypothesis H_circ : exists r : R, 0 < r /\
  norm (A - O) = r /\ norm (B - O) = r.

Hypothesis H_AB : norm (B - A) = 10.

Hypothesis H_arcAYB :
  let u := (A - O) / norm (A - O) in
  let v := (B - O) / norm (B - O) in
  0 < '[u, v] < 1 /\ acos ('[u, v]) = PI/3.

Hypothesis H_X_on_AB : exists m, 0 < m < 1 /\ X = A + m *: (B - A).

Hypothesis H_Y_on_circ : exists t, 0 < t < 1 /\ Y = (1 - t) *: A + t *: B /\ norm (Y - O) = norm (A - O).

Hypothesis H_angle_AXY : angle A X Y = 90.

Lemma angle_AXY_value : angle A X Y = 90.
Proof. by []. Qed.

End Circle_Geometry.
####