####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_uz_length :
  forall (W U Z Y : R^2)
         (x : R),
    (* Collinear points: Z, U, Y *)
    colinear Z U Y ->
    (* U is between Z and Y, with Z---U---Y *)
    [>` Z ; U ; Y `] ->
    (* Angle W U Z is a right angle *)
    '[| (W - U) \dot (Z - U) |] = 0 ->
    (* Angle W U Y is a right angle *)
    '[| (W - U) \dot (Y - U) |] = 0 ->
    (* Distances as labeled *)
    `|Z - U| = x + 6 ->
    `|Y - U| = 32 ->
    `|W - Z| = 3 * x - 6 ->
    `|W - Y| = 40 ->
    (* Conclusion *)
    `|U - Z| = 18.
Proof. Admitted.
####