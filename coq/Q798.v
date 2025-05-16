####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleMeasure.

Variable Point : Type.

Variables A B C D E : Point.

Hypothesis distinct_points : pairwise uniq [::A;B;C;D;E].

(* The points B, A, C are collinear with A between B and C, and D, A, E are collinear with A between D and E, lines BC and DE intersect at A and make a vertical angle *)
Hypothesis line_BAC : exists l1, on_line l1 B /\ on_line l1 A /\ on_line l1 C.
Hypothesis line_DAE : exists l2, on_line l2 D /\ on_line l2 A /\ on_line l2 E.
Hypothesis A_intersection : forall l1 l2, l1 <> l2 -> on_line l1 A -> on_line l2 A.

(* The measure of angle BAD (angle BAC) is 124 degrees *)
Hypothesis angle_BAC_124 : angle_in_degrees B A C = 124.

Theorem measure_angle_CAE_56 :
  angle_in_degrees C A E = 56.
Proof. Admitted.

End AngleMeasure.
####