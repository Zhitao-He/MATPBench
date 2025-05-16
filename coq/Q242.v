####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cone_base_diameter :
  let h := 12%:R in
  let s := 13%:R in
  let r := sqrt (s ^+ 2 - h ^+ 2) in
  2 * r = 10%:R.
Proof. Admitted.
####