####
From mathcomp Require Import all_ssreflect all_geometry.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PerpendicularFeetCollinearCircle.

Variable R : realType.
Implicit Types (A B C P D E F O : 'rV[R]_2).

Theorem perpendicular_feet_collinear_cyclic
  (A B C O P D E F : 'rV[R]_2)
  (hneq : [/\ A \neq B, B \neq C, C \neq A])
  (hcircle : on_circle O A /\ on_circle O B /\ on_circle O C)
  (h_perp_D : foot P B C D)
  (h_perp_E : foot P C A E)
  (h_perp_F : foot P A B F)
  (hcol : collinear D E F) :
  on_circle O P.
Proof. Admitted.

End PerpendicularFeetCollinearCircle.
####