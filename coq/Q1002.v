####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Circle_Theorem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C O D E F P Q : Point.

Hypotheses
  (AneqB : A <> B)
  (AneqC : A <> C)
  (BneqC : B <> C)
  (O_circ : on_circle O A B /\ on_circle O A C /\ on_circle O B C)
  (AC_noncol : ~ collinear A C D)
  (DC_perp_AC : perpendicular (line_through D C) (line_through A C))
  (AB_ext : exists k : R, AB = A + k *: (B - A) /\ D <> AB)
  (D_on_ABext : on_line (line_through A B) D)
  (DE_perp_AO : perpendicular (line_through D E) (line_through A O))
  (E_on_AC : on_line (line_through A C) E)
  (DE_meets_AC : E <> D /\ between D E C)
  (F_on_circle : on_circle O F /\ F <> A /\ F <> B /\ F <> C)
  (F_on_DE : on_line (line_through D E) F)
  (F_distinct : F <> D /\ F <> E)
  (ThetaP_circ : on_circle P B /\ on_circle P E /\ on_circle P F /\ ~ collinear B E F)
  (ThetaQ_circ : on_circle Q C /\ on_circle Q D /\ on_circle Q F /\ ~ collinear C D F).

Theorem tangent_circles_at_F :
  externally_tangent (circle_through P B E F) (circle_through Q C D F) F.
Proof. Admitted.

End Tangent_Circle_Theorem.
####