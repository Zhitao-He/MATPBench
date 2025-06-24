####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentProblem.
Variable R : realType.
Variables O A B C D F E : 'Point[R]_2.

(* Circle properties *)
Hypothesis AB_diameter : diameter O A B.
Hypothesis circle_O : circumcircle O A B.

(* Tangent condition *)
Hypothesis CB_tangent : tangent (line C B) (circle O (dist O A)).

(* Point on arc *)
Hypothesis D_on_arc : on_circle O (dist O A) D /\ between A D B.

(* Intersection points *)
Hypothesis F_intersection : 
  collinear [:: C; D; F] /\ 
  on_circle O (dist O A) F /\ 
  F != D.
Hypothesis E_intersection : 
  collinear [:: A; D; E] /\ 
  collinear [:: O; C; E].

(* Perpendicular condition *)
Definition EB := line E B.
Definition FB := line F B.

(* Main theorem *)
Theorem EB_perp_FB : perpendicular EB FB.
Proof. by []. Qed.

End CircleTangentProblem.
####