####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_circle angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleAngles.

Variable R : realType.

Variables A B C D O : 'rV[R]_2.

Hypothesis H_neq : A != B.
Hypothesis H_on_circle : on_circle O A B /\ on_circle O B B /\ on_circle O C B /\ on_circle O D B.
Hypothesis H_diameter : O = midpoint A B.

(* C and D are both on the circle with center O passing through A and B *)
Hypothesis H_C_on : on_circle O C A.
Hypothesis H_D_on : on_circle O D A.

(* angle B C D = 25 degrees *)
Hypothesis H_angle_BCD : angle_deg B C D = 25.

Theorem circle_diameter_angle
  : angle_deg A O D = 130.
Proof. Admitted.

End CircleAngles.
####