####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section ParallelogramAngle.

Variable R : realType.

Variables U T W V : 'rV[R]_2.

Hypothesis parallelogram_UTWV : parallelogram U T W V.

Variable x : R.

Hypothesis angle_T : angle_deg T U T W = x.
Hypothesis angle_W : angle_deg W V W T = x.
Hypothesis angle_U : angle_deg U T U V = 3 * x - 4.
Hypothesis angle_V : angle_deg V W V U = 3 * x - 4.

Theorem measure_of_angle_UTW :
  angle_deg U T W = 46.
Proof. Admitted.

End ParallelogramAngle.
####