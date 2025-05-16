####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition dist2 (P Q : point) : R := (px P - px Q)^+2 + (py P - py Q)^+2.

Theorem putnam_1987_b2 :
  exists (O A B C : point),
    (* O is the center of the circle, A, B, C are points on the circle *)
    dist2 O A = 50 /\
    dist2 O B = 50 /\
    dist2 O C = 50 /\
    (* AB = 6, BC = 2 *)
    dist2 A B = 36 /\
    dist2 B C = 4 /\
    (* angle ABC = 90 degrees *)
    exists u v : R,
      u <> 0 ->
      v <> 0 ->
      px A = px B + u * (cos (PI/2)) - v * (sin (PI/2)) /\
      py A = py B + u * (sin (PI/2)) + v * (cos (PI/2)) /\
      (* The square of the distance from B to the center is 26 *)

####