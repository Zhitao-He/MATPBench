####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Variables O W Y Z : Point R.

Hypothesis circle_O : Circle O Y.
Hypothesis W_on_circle : on_circle O Y W.
Hypothesis Z_on_circle : on_circle O Y Z.

(* Chord lengths *)
Hypothesis YW_eq_YZ : dist Y W = 18 /\ dist Y Z = 18.

(* Central angles *)
Hypothesis angle_WOY : angle_deg W O Y = 143.
Hypothesis angle_ZOY : exists x : R, angle_deg Z O Y = 2 * x - 1.

Theorem value_of_x :
  forall x : R,
    angle_deg Z O Y = 2 * x - 1 ->
    x = 72.
Proof. Admitted.

End GeometryProblem.
####