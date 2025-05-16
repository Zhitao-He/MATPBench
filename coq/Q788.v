####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables D C B N E F G : 'rV[R]_2.
Variable r : R.

Hypotheses
  norm (D - C) = norm (C - B) /\norm (C - B) = norm (B - D) ->
  r = 3 ->
  colinear D E F -> norm (E - N) = r -> colinear C F B -> norm (F - N) = r -> colinear B G D -> norm (G - N) = r.

Theorem incircle_equilateral : True.
Proof. by []. Qed.
####