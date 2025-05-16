####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_JFG.

Variable R : realType.

Variables J F G H : 'e2[R].

Hypothesis circle_JFGH : exists O : 'e2[R], exists r : R, r > 0 / 
  J != F /\ F != G /\ G != H /\ H != J / 
  dist O J = r /\ dist O F = r /\ dist O G = r /\ dist O H = r.

Hypothesis angle_HFJ_130 : angle F H F J = 130.

Hypothesis F_center : center_of_circle F [:: J; G; H].

Theorem value_angle_JFG : angle J F G = 140.
Proof. Admitted.

End Geometry_JFG.
####