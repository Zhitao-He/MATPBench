####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C D E F G : Point.

Hypotheses
  (h_ABC : ~ colinear R A B C)
  (h_D_on_AB : on_line D (Line B A))
  (h_E_on_AC : on_line E (Line C A))
  (h_DE_parallel_BC : parallel (Line D E) (Line B C))
  (h_F_be_int : intersection F (Line B E) (Line C D))
  (O : Point) (O_circ_BDF : circle_through O B D F)
  (P : Point) (P_circ_CEF : circle_through P C E F)
  (h_G_on_O : on_circle O G)
  (h_G_on_P : on_circle P G)
  (h_G_distinct: G <> F /\ G <> B /\ G <> D /\ G <> C /\ G <> E)
.

Theorem triangle_circle_angle_equality :
  angle B A F = angle C A G.
Proof. Admitted.

End GeometryTheorem.
####