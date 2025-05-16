####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_tree_height :
  let h := 20 * tan (43%:R * (PI / 180)) in
  round h = 19.
Proof. Admitted.
####