####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_DEFG_GFeq34 :
    forall x : R,
      (* Rectangle DEFG, opposite sides equal *)
      let DE := 14 + 2 * x in
      let GF := 4 * (x - 3) + 6 in
      DE = GF ->
      GF = 34.
Proof. Admitted.
####