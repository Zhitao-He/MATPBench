####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section MQP_Angle_Theorem.

Variable R : realType.

Variables M N Q P : Point R.

Variable x : R.

Hypothesis parallelogram_MNQP : parallelogram M N Q P.

Hypothesis angle_M : angle_deg N M Q = 10 * x.
Hypothesis angle_N : angle_deg M N P = 20 * x.

Theorem measure_angle_MQP_120 :
  angle_deg M Q P = 120.
Proof. Admitted.

End MQP_Angle_Theorem.
####