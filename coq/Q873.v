####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section PUQ_Angle_32.

Variable R : realType.

Variables P Q R S T U : 'rV[R]_2.

Hypotheses
  (hPRQ : colinear R Q P = false)
  (hPQT : colinear P Q T = false)
  (hPQU : midpoint U P T)
  (hQSR : midpoint S Q R)
  (hQPU : on_line Q P U)
  (hSTU : on_line S T U)
  (hPar_QS_UT : parallel (Q -- S) (U -- T))
  (hPQ_QS : Q <> S)
  (hPU_UT : U <> T)
  (hAngle_QPU : angle Q P U = (32%:R * PI) / 180).

Theorem value_angle_PUQ : angle P U Q = (32%:R * PI) / 180.
Proof. Admitted.

End PUQ_Angle_32.
####