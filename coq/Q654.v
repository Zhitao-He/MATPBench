####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CyclicQuadrilateralXYZW.

Variable R : realType.
Variables V : 'dV_2.
Variables X Y Z W : V.

Hypothesis cyclic : on_circle (circumcircle W X Y Z) W /\ on_circle (circumcircle W X Y Z) X /\ on_circle (circumcircle W X Y Z) Y /\ on_circle (circumcircle W X Y Z) Z.
Hypothesis quadrilateral : X <> Y /\ Y <> Z /\ Z <> W /\ W <> X.
Hypothesis angles :
  angle_deg W Z Y = 60 /\  (* angle WZY = 60° *)
  angle_deg X W Z = 95.   (* angle XWZ = 95° *)

Theorem measure_angle_XYZ_85 :
  angle_deg X Y Z = 85.
Proof. Admitted.

End CyclicQuadrilateralXYZW.
####