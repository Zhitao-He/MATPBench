####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import Coq.Reals.Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.

Theorem triangle_angle_94 :
  forall (A B C M N : R^2),
    (* Non-collinear triangle *)
    ~ colinear A B C ->
    (* M and N lie on side AB *)
    on_line M A B ->
    on_line N A B ->
    (* N between A and B *)
    between A N B ->
    (* M between A and B *)
    between A M B ->
    (* AN = AC *)
    norm (N - A) = norm (C - A) ->
    (* BM = BC *)
    norm (B - M) = norm (B - C) ->
    (* Angle MCN = 43 degrees *)
    let deg := fun x => x * PI / 180 in
    angle M C N = deg 43 ->
    (* Then the angle ACB = 94 degrees *)
    angle A C B = deg 94.
Proof. Admitted.
####