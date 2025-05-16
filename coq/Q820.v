####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_ABC_x_value :
  let A := (0%:R, 0%:R) in
  let B := (x, 0%:R) in
  let C := (x, y) in
  sqrt ((x - 0%:R)^+2 + (y - 0%:R)^+2) = 14 ->
  let dot u v := fst u * fst v + snd u * snd v in
  let norm u := sqrt (fst u ^+2 + snd u ^+2) in
  dot (B - A) (C - A) / (norm (B - A) * norm (C - A)) = cos (PI / 6) ->
  y = 7 * sqrt 3.
Proof. by []. Qed.
####