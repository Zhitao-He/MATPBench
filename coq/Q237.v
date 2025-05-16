####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition g (x : R) := (x + 2)^2 + 1.

Theorem graph_g_characterization :
  forall x y : R,
    (y = g x) <-> (y = (x + 2)^2 + 1).
Proof. Admitted.
####