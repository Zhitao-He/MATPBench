####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import real_closed_field geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circles_Tangent_F.

Variable R : realType.
Let Point := R^2.

Variables (A B C O D E F P Q : Point).

(* Hypotheses on distinctness and non-collinearity implicit from geometric construction. *)
Hypothesis H_ABC_circ : circum_circle O A B C.
Hypothesis H_perp_DC_AC : perpendicular (Line D C) (Line A C).
Hypothesis H_D_on_AB_ext : exists t : R, D = A + t *: (B - A) /\ t <> 0.
Hypothesis H_FE_on_circle : F <> E /\ on_circle O F /\ on_line E A C /\ on_line F D E /\ on_line E D A.
Hypothesis H_DE_perp_AO : perpendicular (Line D E) (Line A O).
Hypothesis H_E_on_AC : on_line E A C.
Hypothesis H_F_on_circle_O : on_circle O F.
Hypothesis H_F_on_DE : on_line F D E.
Hypothesis H_D_on_DC : on_line D D C.
Hypothesis H_E_on_DE : on_line E D E.
Hypothesis H_P_circle_BEF : circum_circle P B E F.
Hypothesis H_Q_circle_CDF : circum_circle Q C D F.

Theorem circles_PQ_tangent_at_F :
  externally_tangent_at (circum_circle P B E F) (circum_circle Q C D F) F.
Proof. Admitted.

End Circles_Tangent_F.
####