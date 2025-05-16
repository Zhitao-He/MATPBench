####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum trig.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem twelve_congruent_disks_covering_circle :
  exists (a b c : nat),
    0 < a -> 0 < b -> 0 < c ->
    (forall p, prime p -> (p ^ 2)%N %| c -> False) ->
    let r := (1 - sqrt (3 - sqrt 3)) in
    let total_area := 12%:R * PI * (r ^+ 2) in
      total_area = PI * ((a%:R) - (b%:R) * sqrt (c%:R)) /\
      a + b + c = 135.
Proof. Admitted.
####