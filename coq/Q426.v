####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleCosine.

Variable R : realType.

(* Define points A, B, C of triangle ABC *)
Variables A B C : 'rV[R]_2.

(* Hypotheses for the right triangle with right angle at A *)
Hypothesis right_angle_at_A : orthogonal (A - B) (A - C).

(* Hypothesis for cos(B) = 3/5 *)
Hypothesis cos_B : cos_angle B A C = 3 / 5%:R.

(* Theorem to prove cos(C) = 4/5 *)
Theorem cos_C_is_4_over_5 : 
  cos_angle C A B = 4 / 5%:R.
Proof. Admitted.

End TriangleCosine.
####