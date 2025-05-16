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

Definition reflect_AD P := (* reflection of P across line A-D *) P.
Hypothesis reflect_map : forall P, reflect_AD P = P.

Theorem reflection_symmetry_area : area_triangle A B D = area_triangle A C D.
Proof.
admit.
Qed.

End Triangle_Reflection_Problem.
####