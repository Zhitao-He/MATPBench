####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C O : Point.

Hypothesis Hcircle : circle_centered_at O A B C.

(* D is the foot of perpendicular from A to BC *)
Variable D : Point.
Hypothesis H_D_on_BC : on_line D B C.
Hypothesis H_AD_perp_BC : perpendicular (line_through A D) (line_through B C).

(* E is the intersection of AD and CO *)
Variable E : Point.
Hypothesis H_E_on_AD : on_line E A D.
Hypothesis H_E_on_CO : on_line E C O.

(* F is the midpoint of AE *)
Variable F : Point.
Hypothesis H_F_mid_AE : midpoint F A E.

(* FO meets BC at H *)
Variable H : Point.
Hypothesis H_H_on_FO : on_line H F O.
Hypothesis H_H_on_BC : on_line H B C.

(* CG is perpendicular to AO at G *)
Variable G : Point.
Hypothesis H_G_on_CG : on_line G C G.
Hypothesis H_G_on_AO : on_line G A O.
Hypothesis H_CG_perp_AO : perpendicular (line_through C G) (line_through A O).

Theorem concyclic_B_H_O_G :
  concyclic B H O G.
Proof. Admitted.

End Geometry_Theorem.
####