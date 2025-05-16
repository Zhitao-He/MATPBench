####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentCircleAngle.

Variable R : realType.

Variables A B C D O : 'Point[R].

Hypothesis circle_O : on_circle O C /\ on_circle O B /\ on_circle O A.
Hypothesis tangent_CD_C : tangent_at_point (Circle O (dist O C)) C D.
Hypothesis C_neq_B : C <> B.
Hypothesis C_neq_A : C <> A.
Hypothesis A_neq_B : A <> B.

(* Angles are measured in degrees *)
Hypothesis angle_DCB_40 : angle_deg D C B = 40.

Theorem tangent_circle_angle :
  angle_deg C A B = 40.
Proof. Admitted.

End TangentCircleAngle.
####