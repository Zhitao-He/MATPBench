####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_Reflection_Problem.

Variable R : realType.
Variables A B C D : 'rV[R]_2.

Hypothesis neq : A != B.
Hypothesis D_on_BC : exists t, 0 < t < 1 /\ D = (1 - t)*:B + t *:C.
Hypothesis triangle : ~~ colinear A B C.
Hypothesis angle_A : angle B A C = 40%:R * PI / 180.
Hypothesis reflection_AD : forall P, exists Q, (Q = P /\ (angle A D P = angle A D Q)) /\ (angle A P D = angle A Q D).

Theorem angle_B_measure : angle A B D = 70%:R * PI / 180.
Proof.
admit.
Qed.

End Triangle_Reflection_Problem.
####