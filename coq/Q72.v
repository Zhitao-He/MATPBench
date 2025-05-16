####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition J (x : R) : R :=
  if x <= -2 then 4 + x else if x <= 0 then - x else x.

Theorem J_triple_root_count :
  #| [set x : R | J (J (J x)) = 0] | = 4%nat.
Proof. Admitted.
####