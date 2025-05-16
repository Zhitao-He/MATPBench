####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pi : R := Num.pi.

Theorem sphere_volume_3cm :
  let r := 3%:R in
  let V := (4%:R / 3%:R) * pi * r ^+ 3 in
  V = 11310.
Proof. Admitted.
####