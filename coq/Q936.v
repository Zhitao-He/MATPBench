####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A R S T : 'rV[R]_2.

Hypothesis circleA : on_circle A R S.
Hypothesis circleA2 : on_circle A R T.
Hypothesis S_neq_T : S != T.
Hypothesis S_neq_R : S != R.
Hypothesis T_neq_R : T != R.

(* Given: angle(R S T) = 63 degrees *)
Hypothesis angle_RST_63 : ArcTan2 (R - S) (T - S) = (63%:R * (PI / 180)).

Theorem measure_of_arc_ATR :
  arc_measure A T R = 126%:R.
Proof. Admitted.
####