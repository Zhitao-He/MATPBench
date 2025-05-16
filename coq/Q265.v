####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem volume_cylinder_example :
  let r := 3%:R in
  let h := 13%:R in
  let volume := (GRing.PI * r ^+ 2 * h) in
  ((volume *+ 100) / 1 >= 3675700%:R - 1) /\
  ((volume *+ 100) / 1 <= 3675700%:R + 1).
Proof. Admitted.
####