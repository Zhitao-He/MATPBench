####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_angle_ACB_value :
  forall (A B C : 'rV[R]_2),
    (A != B) -> (B != C) -> (A != C) ->
    `|A - B| = 13 ->
    `|B - C| = 15 ->
    `|A - C| = 12 ->
    let theta := acos ((13^2 + 15^2 - 12^2) / (2 * 13 * 15)) in
    let deg : R := 180%:R * theta / PI in
    deg = 180%:R * acos (5 / 9) / PI.
Proof. Admitted.
####