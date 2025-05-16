####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PutnamGeom.

Variable R : realType.
Variable plane : euclidean_plane R.

Let Point := plane#point.

Variables A B C D E F G : Point.

Hypotheses
  (quad : collinear A B F = false /\ collinear A D F = false /\ collinear B F D = false)
  (on_BF : on_line C (Line B F))
  (on_DF : on_line E (Line D F))
  (BAC_eq_DAE : angle A B C = angle A D E)
  (G_be_CD : exists l1 l2, l1 = Line B E /\ l2 = Line C D /\ intersection l1 l2 = Some G).

Theorem putnam_geom_quadrilateral_angle :
  angle F A C = angle G A E.
Proof. Admitted.

End PutnamGeom.
####