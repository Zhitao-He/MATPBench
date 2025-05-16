From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variable T : 'I_37 -> R^2.

Hypothesis large_eq_triangle :
  exists v0 v1 v2 : R^2,
    v0 <> v1 /\ v1 <> v2 /\ v2 <> v0 /\
    dist v0 v1 = dist v1 v2 /\ dist v2 v0 = dist v0 v1 /\
    (forall i : 'I_36, exists a b c : R^2,
      [/\ a <> b, b <> c, c <> a,
          area_triangle a b c = 10]).

Theorem total_area_360 :
  forall (A B C : R^2),
    (forall i : 'I_36, area_triangle A B C = 10) ->
    10 * 36 = 360.
Proof.
by rewrite mulnC.
Qed.
####