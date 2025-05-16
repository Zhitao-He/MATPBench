####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_diagonal_length :
  let r := 3 : R in
  let h := 13 : R in
  let L := sqrt (r^+2 + h^+2) in
  L = 14.
Proof. Admitted.
####