####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry circles angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

(* Points of the plane *)
Variables A B C : 'rV[R]_2.

(* Non-collinearity *)
Hypothesis H_ABC_noncollinear : ~ collinear A B C.

(* Circumcircle O of triangle ABC *)
Variable O : 'rV[R]_2.
Hypothesis H_circumcircle : on_circle O A /\ on_circle O B /\ on_circle O C.

(* F is second intersection of angle bisector of BAC with circle O (other than A) *)
Variable F : 'rV[R]_2.
Hypothesis H_AF_bisect : angle_bisector_point A B C F.
Hypothesis H_F_on_circum : on_circle O F.
Hypothesis H_F_not_A : F <> A.

(* H is orthocenter of triangle ABC *)
Variable H_ortho : 'rV[R]_2.
Hypothesis H_orthocenter : orthocenter A B C H_ortho.

(* CE perpendicular to AB at E; D is foot from B to AC *)
Variable E D : 'rV[R]_2.
Hypothesis H_E_on_CE : on_line E C (perp_through C A B).
Hypothesis H_E_perp: perpendicular (E - C) (B - A).
Hypothesis H_E_on_AB : on_line E A B.

Hypothesis H_D_on_BD : on_line D B (perp_through B A C).
Hypothesis H_D_perp : perpendicular (D - B) (C - A).
Hypothesis H_D_on_AC : on_line D A C.

(* Circumcircle of triangle ADE *)
Variable O' : 'rV[R]_2.
Hypothesis H_circum_ADE : circumcenter A D E O'.
Variable G : 'rV[R]_2.
Hypothesis H_G_on_ADEcirc : on_circle O' G.
Hypothesis H_G_on_circum : on_circle O G.
Hypothesis H_G_not_A : G <> A.

(* Line GF meets BC at I *)
Variable I : 'rV[R]_2.
Hypothesis H_I_on_GF : on_line I G F.
Hypothesis H_I_on_BC : on_line I B C.

(* Let H = H_ortho *)
Let H := H_ortho.

Theorem geometry_angle_bisect_IH_BHC :
  angle_bisector (B - H) (C - H) (I - H).
Proof. Admitted.

End Geometry_Theorem.
####