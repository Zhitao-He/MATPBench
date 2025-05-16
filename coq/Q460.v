####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_distance_weighted_sum :
  forall (A B C D : 'rV[R]_2)
         (e f g : R),
    (* AB = 13, BC = 12, CA = 5 *)
    norm (B - A) = 13 ->
    norm (C - B) = 12 ->
    norm (A - C) = 5 ->
    (* D is in the interior of triangle ABC *)
    in_triangle2D D A B C ->
    (* e, f, g are distances from D to sides BC, CA, AB respectively *)
    distance_point_line D B C = e ->
    distance_point_line D C A = f ->
    distance_point_line D A B = g ->
    (* Area of triangle ABC is 30 *)
    area_triangle2D A B C = 30 ->
    5 * e + 12 * f + 13 * g = 60.
Proof. Admitted.
####