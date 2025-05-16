####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable Point : Type.

Variables A B C D E : Point.

Variable angle : Point -> Point -> Point -> R.

Hypothesis angle_pos : 
  forall X Y Z : Point, 0 <= angle X Y Z <= 180.

(* Given angles from the diagram: *)
Hypothesis H1 : angle C B A = 36.
Hypothesis H2 : angle D B A = 42.
Hypothesis H3 : angle B C D = 28.
Hypothesis H4 : angle C D E = 57.

(* E is the intersection of AC and BD *)

(* The theorem *)
Theorem measure_of_angle_BAE :
  angle B A E = 49.
Proof. Admitted.

End GeometryProblem.
####