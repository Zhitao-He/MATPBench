####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals integral trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition R1 := \int_(-%pi)^(0) (sin x - cos x) dx.
Definition R2 := \int_(0)^(%pi) (sin x - cos x) dx.

Theorem region_R2_larger :
  R2 > R1.
Proof. Admitted.
####