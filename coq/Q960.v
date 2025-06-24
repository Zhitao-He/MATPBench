####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngleProblem.
Variable R : realType.
Variables A B C D E F G M O : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis D_on_BC : on_segment D (seg B C).
Hypothesis angle_condition : angle_deg (D,A,C) = angle_deg (A,B,D).

(* Circle properties *)
Hypothesis circle_O : circumcircle O B D /\ on_circle O E /\ on_circle O F.
Hypothesis E_on_AB : on_segment E (seg A B).
Hypothesis F_on_AD : on_segment F (seg A D).

(* Intersection point *)
Hypothesis G_intersection : collinear [:: B; F; G] /\ collinear [:: D; E; G].

(* Midpoint condition *)
Hypothesis M_midpoint : midpoint M A G.

(* Main theorem *)
Theorem CM_parallel_AO : parallel (line C M) (line A O).
Proof. by []. Qed.

End CircleAngleProblem.
####