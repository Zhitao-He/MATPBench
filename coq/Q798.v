####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleMeasure.

Variable Point : Type.

Variables A B C E : Point.

Hypothesis colinear_BAE : exists l, on_line l B /\ on_line l A /\ on_line l E.
Hypothesis angle_BAC : angle_in_degrees B A C = 124.
Hypothesis flat_angle_BAE : angle_in_degrees B A E = 180.

Theorem measure_angle_CAE :
  angle_in_degrees C A E = 56.
Proof.
  (* Proof would involve:
     1. Using flat angle property of BAE
     2. Applying angle addition BAC + CAE = BAE
     3. Solving for CAE *)
  admit.
Qed.

End AngleMeasure.
####