####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis Hdistinct : [/\ A != B, B != C, C != D, D != A, A != C, B != D].
Hypothesis D_is_right : angle D A C = angle90.
Hypothesis angleDAC_29 : angle A D C = 29%:R.
Hypothesis angleCBD_17 : angle C B D = 17%:R.

Theorem measure_of_angle_BAC_12 :
  angle B A C = 12%:R.
Proof. Admitted.

End GeometryProblem.
####