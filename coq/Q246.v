####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_volume_88357_cm3 :
  let r := 5%:R in
  let h := 15%:R in
  let volume := (PI * r ^+ 2 * h) / 2 in
  (round (volume * 100) / 100 = 88357).
Proof. Admitted.
####