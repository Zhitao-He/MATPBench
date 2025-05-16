####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Problem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis on_circle : exists O : 'rV[R]_2, exists r : R, 0 < r /\ norm (A - O) = r /\ norm (B - O) = r /\ norm (C - O) = r /\ norm (D - O) = r.

Hypothesis distinct : A <> B /\ B <> C /\ C <> D /\ D <> A /\ A <> C /\ B <> D.

(* Angles measured in degrees, positive orientation (counterclockwise) *)
Definition angle_deg (P Q R : 'rV[R]_2) : R :=
  let u := (P - Q) in let v := (R - Q) in
  let ang := acos ((u *m v^T) 0 0 / (norm u * norm v)) * 180 / PI in ang.

Hypothesis angle_ACB : angle_deg A C B = 125.
Hypothesis angle_BCD : angle_deg B C D = 121.

Theorem value_of_x_angle_DCA :
  angle_deg D C A = 114.
Proof. Admitted.

End Geometry_Problem.
####