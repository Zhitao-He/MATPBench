From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_circle angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleAngles.

Variable R : realType.

Variables A B C D O : 'rV[R]_2.

(* A and B are distinct points *)
Hypothesis H_neq : A != B.

(* AB is the diameter of the circle centered at O *)
Hypothesis H_diameter : O = midpoint A B.

(* C and D are points on the circle centered at O passing through A and B *)
Hypothesis H_C_on : on_circle O C A.
Hypothesis H_D_on : on_circle O D A.

(* Angle BCD is 25 degrees *)
Hypothesis H_angle_BCD : angle_deg B C D = 25.

(* Theorem to prove: The measure of angle AOD is 130 degrees *)
Theorem circle_diameter_angle
  : angle_deg A O D = 130.
Proof.
  (* Here, we would insert the actual proof, which would involve using properties of circles, angles, and diameters 
     to derive the measure of angle AOD. *)
  (* For the sake of this example, the proof is omitted. *)
  Admitted.

End CircleAngles.
####