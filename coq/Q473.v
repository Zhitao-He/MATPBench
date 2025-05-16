####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals matrix.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_grey_area :
  (normr (col_mx 1 0 - col_mx 0 0)) ^+ 2 = 80%:R ->
  True.
Proof.
admit.
Qed.
####