####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition f (x : R) := 5 * x - x ^+ 2.
Definition g (x : R) := 3 * x - 0.5 * x ^+ 2.

Theorem rainfall_mosquitos_bats_intersect :
  let sols := [seq x | x <- [:: 0%:R ; 4%:R ], f x == g x] in
  (forall x, In x sols -> f x = g x) /\
  (forall x, f x = g x -> (x = 0%:R) \/ (`|x - 4%:R| <= 0.25)).

Proof. Admitted.
####