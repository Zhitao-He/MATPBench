####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals realalg.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem semicircle_shaded_area_ratio :
  let r := r0 in let AB := r in let BC := 2*r in let CD := 3*r in let AD := 6*r in
  let S1 := PI * (AD/2)^2 / 2 in
  let S2 := PI * (CD/2)^2 / 2 + PI * (BC/2)^2 / 2 + PI * (AB/2)^2 / 2 in
  S1 - S2 = (11/18) * S2.
Proof.
admit.
Qed.
####