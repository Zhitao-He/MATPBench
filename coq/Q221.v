####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_quarter_circle
  : let r : R := 7 in
    let area : R := (/4) * Num.pi * r ^+ 2 in
    area = (147 * Num.pi) / 4.
Proof. Admitted.
####