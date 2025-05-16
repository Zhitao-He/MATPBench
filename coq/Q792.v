####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_chord_problem :
  forall (A B C D E F : R^2) (x : R),
    norm (A - D) = norm (B - D) ->
    norm (A - D) = norm (C - D) ->
    norm (A - D) = norm (F - D) ->
    colinear A E C -> colinear B E F ->
    norm (C - E) = 9 -> norm (E - B) = 4 ->
    norm (B - F) = x -> norm (A - E) = x + 7 ->
    A <> B -> A <> C -> A <> F -> B <> C -> B <> F -> C <> F ->
    x = 63/5.
Proof. by []. Qed.
####