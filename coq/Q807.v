####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section MeasureOfAngleDCB.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis distinct_points : [/\ A != B, B != C, C != D, D != A, A != C, B != D].

Hypothesis quadrilateral : collinear R A B = false /\ collinear R B C = false /\
                          collinear R C D = false /\ collinear R D A = false.

(* Measured angles at the vertices, using the standard geometric (counterclockwise) angle definition *)
Hypothesis angle_BAD_74 : angle R B A D = 74%:R.
Hypothesis angle_CDA_105 : angle R C D A = 105%:R.

Theorem value_measure_of_angle_DCB :
  angle R D C B = 76%:R.
Proof. Admitted.

End MeasureOfAngleDCB.
####