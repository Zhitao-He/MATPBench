####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentCircles.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C O D E F P Q : point.

(* Basic circle configuration *)
Hypothesis ABC_on_circle : concyclic A B C O.

(* DC perpendicular to AC, D on AB extended *)
Hypothesis DC_perp_AC : perpendicular (seg D C) (seg A C).
Hypothesis D_on_AB_ext : exists t : R, t > 1 /\ D = A + t *: (B - A).

(* DE perpendicular to AO, intersecting circle at F and AC at E *)
Hypothesis DE_perp_AO : perpendicular (seg D E) (seg A O).
Hypothesis F_on_circle : on_circle O F.
Hypothesis E_on_AC : on_line E A C.
Hypothesis F_on_DE : on_line F D E.

(* Circle definitions *)
Hypothesis P_circle : is_circumcircle P B E F.
Hypothesis Q_circle : is_circumcircle Q C D F.

Theorem circles_tangent_at_F : externally_tangent P Q F.
Proof. Admitted.

End TangentCircles.
####