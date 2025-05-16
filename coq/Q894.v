####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals realfun.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A (on the circle) and B (center), with |AB| = 3, so radius = 3 *)
Variables A B : R^2.
Hypothesis Hcenter : forall x : R^2, ((x - B) == (A - B)) <-> (norm (x - B) == 3).
Definition circleB (x : R^2) : bool := (norm (x - B) == 3).

Theorem perimeter_of_circleB :
  (exists A, circleB A) ->
  (forall A, circleB A -> norm (A - B) = 3) ->
  (forall P, (forall x, P x <-> circleB x)) ->
  (2 * PI * 3 = 6 * PI).
Proof. Admitted.
####