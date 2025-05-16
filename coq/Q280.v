####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TangentCircleProblem.

Variable R : realType.

Variables A B C M P : 'rV[R]_2.
Variable r : R.
Hypothesis r_pos : 0 < r.

Definition on_circle X := ((X - P) *m (X - P)^T) = r^+2.
Hypothesis B_on_circle : on_circle B.
Hypothesis C_on_circle : on_circle C.
Hypothesis AB_tangent_B : ((B - A) *m (B - P)^T) = 0.
Hypothesis AC_tangent_C : ((C - A) *m (C - P)^T) = 0.
Hypothesis M_mid_AC : M = (A + C) / 2.
Definition angle U V W := acos (((U - V) *m (W - V)^T) / (norm (U - V) * norm (W - V))).

Theorem equal_angles_at_M : angle P M C = angle M P C.
Proof.
admit.
Qed.

End TangentCircleProblem.
####