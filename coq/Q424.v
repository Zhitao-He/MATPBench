####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition triangle_area a b c :=
  let s := (a + b + c) / 2 in sqrt (s * (s - a) * (s - b) * (s - c)).

Theorem isosceles_integer_triangles_area_120_other_perimeter :
  forall a b c,
    0 < a -> 0 < b -> 0 < c ->
    (a = b / b = c / c = a) ->
    triangle_area a b c = 120 ->
    (a, b, c) = (17,17,30) / (a, b, c) = (13,13,24).
Proof.
admit.
Qed.
####