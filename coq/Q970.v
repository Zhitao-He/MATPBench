####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTriangleProblem.
Variable R : realType.
Variables A B C O E F H D : 'Point[R]_2.

(* Circle properties *)
Hypothesis ABC_on_circle : concyclic [:: A; B; C].
Hypothesis angle_BAC : angle_deg (B,A,C) = 60.

(* Orthic triangle properties *)
Hypothesis AE_perp : perpendicular (line A E) (line B C).
Hypothesis CF_perp : perpendicular (line C F) (line A B).
Hypothesis H_orthocenter : collinear [:: A; E; H] /\ collinear [:: C; F; H].

(* Midpoint of arc BC not containing A *)
Hypothesis D_midarc : midpoint_arc O D B C A.

(* Main theorem *)
Theorem AHD_isosceles : dist A H = dist A D.
Proof. by []. Qed.

End CircleTriangleProblem.
####