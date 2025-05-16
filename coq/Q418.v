####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem parallel_triangle_area_ratio :
  forall A B C D E : 'e2d R,
    ~ collinear A B C ->
    on_line D (Line A B) ->
    on_line E (Line A C) ->
    parallel (Line D E) (Line B C) ->
    dist B C = 10 ->
    dist D E = 4 ->
    between D A B ->
    between E A C ->
    dist_triangle A D E / dist_triangle A B C = 4%:R/25%:R.
Proof.
admit.
Qed.
####