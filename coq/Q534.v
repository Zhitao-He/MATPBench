####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length_value :
  forall (A B C : R^2)
         (a : R),
    (* Triangle vertices are non-collinear *)
    A <> B -> B <> C -> C <> A ->
    (* Side BC has length a *)
    norm (B - C) = a ->
    (* Side AC has length 8 *)
    norm (A - C) = 10 ->
    (* Side AB has length 8 *)
    norm (A - B) = 8 ->
    (* Angle at A is 60 degrees *)
    let u := (C - A) / norm (C - A) in
    let v := (B - A) / norm (B - A) in
    \angleu u v = PI / 3 ->
    a = 2 * sqrt 21.
Proof. Admitted.
####