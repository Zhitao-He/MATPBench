####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Parallelogram_FBC_34.

Variable R : realType.

Variables A B C D F : 'rV[R]_2.

Hypothesis parallelogram_ABCD : parallelogram A B C D.
Hypothesis BC_length : dist B C = 3 * y - 4.
Hypothesis AB_length : dist A B = 5 * x.
Hypothesis CD_length : dist C D = 25.
Hypothesis DA_length : dist D A = 29.
Hypothesis F_on_AC : colinear A F C.
Hypothesis F_on_BD : colinear B F D.
Hypothesis F_between_A_and_C : between A F C.
Hypothesis F_between_B_and_D : between B F D.
Hypothesis angle_BAF_49 : angle B A F = 49%:R.
Hypothesis angle_FDA_34 : angle F D A = 34%:R.
Hypothesis angle_FCB_54 : angle F C B = 54%:R.

Theorem find_FBC_angle : angle F B C = 34%:R.
Proof.
admit.
Qed.

End Parallelogram_FBC_34.
####