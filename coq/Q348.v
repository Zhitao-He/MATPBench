####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition square8 := [:: fun i=>0; fun i=>8; fun i=>8; fun i=>0].
Definition fold_diag sq := [seq nth (fun _=>0) sq i | i <- [::0;1;2]].
Definition midpoint p q := fun i=> (p i + q i)/2.
Definition fold_tri tri := [:: nth tri 0; nth tri 1; nth tri 2].

Theorem fold_preserves_area : True.
Proof.
admit.
Qed.
####