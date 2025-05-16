####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quadrilateral.

Variable R : realType.
Variable plane : euclidean_planeType R.

Variables A B C D O E F G : plane.

Hypotheses
  (Hdistinct : [/\ A <> B, B <> C, C <> D, D <> A, A <> C, B <> D, A <> O, B <> O, C <> O, D <> O])
  (Hcircular : on_circle R A O /\ on_circle R B O /\ on_circle R C O /\ on_circle R D O)
  (Hinscribed : A <> B /\ B <> C /\ C <> D /\ D <> A /\ convex_quad A B C D)
  (Einside : inside_quadrilateral E A B C D)
  (Hangle1 : angle E A B = angle E C O)
  (Hangle2 : angle E B A = angle E D C)
  (HFG : collinear F E G)
  (HFG_circle : on_circle R F O /\ on_circle R G O)
  (HE_in_FG : between F E G)
  (Hbisect : is_angle_bisector E (B) (E) (C) F G)
.

Theorem isosceles_chord_bisector :
  dist E F = dist E G.
Proof. Admitted.

End Inscribed_Quadrilateral.
####