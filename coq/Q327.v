####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section OrthocenterProblem.

Variable R : realType.
Variables A B C D E F H : 'e2[R].

(* Triangle ABC is acute *)
Hypothesis acute_triangle : 0 < angle A B C /\ 0 < angle B C A /\ 0 < angle C A B /\ angle A B C < PI/2 /\ angle B C A < PI/2 /\ angle C A B < PI/2.

(* Altitudes AD, BE, CF intersect at orthocenter H *)
Hypothesis altitude_AD : is_altitude A D B C.
Hypothesis altitude_BE : is_altitude B E C A.
Hypothesis altitude_CF : is_altitude C F A B.
Hypothesis orthocenter_H : colinear H A D /\ colinear H B E /\ colinear H C F.

(* Given lengths BD = 5, CD = 9, CE = 42/5 *)
Hypothesis BD_length : dist B D = 5.
Hypothesis CD_length : dist C D = 9.
Hypothesis CE_length : dist C E = 42/5.

(* Goal: Find the length of HE *)
Theorem length_HE : exists HE : R, dist H E = HE /\ HE = 99/20.
Proof. Admitted.

End OrthocenterProblem.
####