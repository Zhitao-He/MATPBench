####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem trapezoid_PQRS_height :
  let PQ := 20%:R in
  let SR := 30%:R in
  let area := 250%:R in
  exists h : R, 0 < h /\ area = ((PQ + SR) / 2) * h.
Proof. Admitted.
####