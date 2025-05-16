####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Angle_CAB_85.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis on_circle : exists O : 'rV[R]_2, exists r : R, r > 0 / norm (A - O) = r / norm (B - O) = r / norm (C - O) = r.
Hypothesis cyclic_order : ccw A B C O. (* Points A, B, C are distinct and appear in counterclockwise order on the circle centered at O *)
Hypothesis angle_BAC_major_arc : angle_center O B C = 170%:R. (* The arc BC opposite A (through the center O) has central angle 170 degrees *)

Definition angle_CAB := @angle A C B.

Theorem measure_angle_CAB_85 :
    on_circle ->
    angle_BAC_major_arc ->
    angle_CAB = 85%:R.
Proof. Admitted.

End Angle_CAB_85.
####