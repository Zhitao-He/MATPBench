####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_equilateral_AED_angle_30 :
  forall (A B C D E : 'e2_1[R]),
    (* Square properties *)
    quadrilateral A B C D /\
    (distance A B = distance B C) /\
    (distance B C = distance C D) /\
    (distance C D = distance D A) /\
    right_angle A B C /\ right_angle B C D /\
    right_angle C D A /\ right_angle D A B /\
    (* AED equilateral on AD *)
    E <> A /\ E <> D /\
    colinear A D E = false /\
    distance A E = distance E D /\
    distance A E = distance A D /\
    (* AD is shared *)
    (between A D E \/ between D A E \/ between D E A \/ between A E D \/ between E A D \/ between E D A) ->

    angle_deg B A E = 30.
Proof. Admitted.
####