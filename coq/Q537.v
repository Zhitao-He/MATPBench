####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

Variables (A B F G H J : 'e2d[R]).
Variable ω : circle R.

Hypotheses
  (Hcircle : circle_center ω = A /\ circle_radius ω = dist A J)
  (Honcircle : forall P, P \in [::F;G;H;J] -> incircle ω P)
  (Bmid : midpoint G J B)
  (AonBJ : collinear A B J)
  (F_on_B_line : collinear F B H)
  (BG_perp_BH : angle B G B H = pi/2)
  (angle_GBJ_twice : exists x : R, 0 < x /\ angle G B J = 2*x /\ angle J B H = x)
  .

Theorem measure_angle_BHG_30 :
  angle B H G = pi / 6.
Proof. Admitted.

End GeometryTheorem.
####