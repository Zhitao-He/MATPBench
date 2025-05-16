####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum ssrint ssrnat.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_height_rounded :
  let r := 79%:R / 2 in
  let S := 54105%:R in
  let h := (S - 2 * (PI * r ^+ 2)) / (2 * PI * r) in
  round h = 30%:Z.
Proof. Admitted.
####