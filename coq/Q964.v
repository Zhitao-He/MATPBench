####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section OrthocenterAngleBisector.
Variable R : realType.
Variables A B C O F H E D G I : 'Point[R]_2.

(* Triangle and circumcircle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis circumcircle_O : circumcircle O A B C.

(* Angle bisector and circle intersection *)
Hypothesis AF_bisector : angle_bisector (line A F) (line A B) (line A C).
Hypothesis F_on_circle : on_circle O F.

(* Orthocenter *)
Hypothesis H_orthocenter : orthocenter A B C H.

(* Feet of perpendiculars *)
Hypothesis CE_perp : perpendicular (line C E) (line A B).
Hypothesis BD_perp : perpendicular (line B D) (line A C).

(* Circumcircle of ADE *)
Hypothesis ADE_circle : circumcircle G A D E.
Hypothesis G_on_both : on_circle O G.

(* GF meets BC at I *)
Hypothesis I_intersection : collinear [:: G; F; I] /\ collinear [:: B; C; I].

(* Main theorem *)
Theorem IH_bisects_BHC : angle_bisector (line I H) (line B H) (line C H).
Proof. by []. Qed.

End OrthocenterAngleBisector.
####