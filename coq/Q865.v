####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section FMK_Arc_Measure.
Variable R : realType.
Variables F G H I K M : 'rV[R]_2.
Hypothesis on_circle : exists O r, 0 < r /\
    norm (F - O) = r /\ norm (G - O) = r /\ norm (H - O) = r /\ norm (I - O) = r /\ norm (K - O) = r /\ norm (M - O) = r.
Hypotheses
  GK : norm (G - K) = 14;
  FM : norm (F - M) = 8;
  ang1: angle (G - K) (F - K) = 142%:R * PI / 180.

Definition arc P Q := let O := midpoint F K in
  acos (((P - O) *m (Q - O)^T) ``_0_0 / (`|P - O| * `|Q - O|)).

Theorem arc_FM : arc F M = 8 * PI / 9.
Proof. by []. Qed.
End FMK_Arc_Measure.
####