####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_CAB_tan_measure :
  let A := (b, 0) : R * R in
  let B := (0, a) : R * R in
  let C := (0, 0) : R * R in
  (a > 0) -> (b > 0) ->
  angle B C A = PI / 2 ->
  dist C A = b ->
  dist C B = a ->
  tan (angle C A B) = 7 / 24.
Proof. Admitted.
####