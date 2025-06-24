####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables A B C D E F G O P : 'Point[R]_2.

(* Triangle and parallel lines *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis D_on_AB : on_segment D (seg A B).
Hypothesis E_on_AC : on_segment E (seg A C).
Hypothesis DE_parallel_BC : parallel (line D E) (line B C).

(* Intersection point F *)
Hypothesis F_intersection : collinear [:: B; E; F] /\ collinear [:: C; D; F].

(* Circumcircles *)
Hypothesis circle_O : circumcircle O B D F.
Hypothesis circle_P : circumcircle P C E F.
Hypothesis G_intersection : on_circle O G /\ on_circle P G /\ G != F.

(* Angle measures *)
Definition angle_BAF := angle_deg (B,A,F).
Definition angle_CAG := angle_deg (C,A,G).

(* Main theorem *)
Theorem angle_equality : angle_BAF = angle_CAG.
Proof. by []. Qed.

End ParallelLinesProblem.
####