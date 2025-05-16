####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleGeometry.

Variable R : realType.

Variables A B C D G : 'rV[R]_2.

Hypothesis H_cyclic : on_circle (circum_circle A B C D) A /\ on_circle (circum_circle A B C D) B /\
                      on_circle (circum_circle A B C D) C /\ on_circle (circum_circle A B C D) D.

Variable x : R.

Hypothesis H_angle_BAG : angle B A G = x + 24.
Hypothesis H_angle_CGD : angle C G D = 3 * x.

Theorem measure_angle_GBA_36 :
    angle G B A = 36.
Proof. Admitted.

End CircleGeometry.
####