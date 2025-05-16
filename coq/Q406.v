####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem internal_tangent_circle_intersection :
  let C1 := (5,0) in let r1 := 1 in
  let C2 := (11,0) in let r2 := 2 in
  exists m b,
    abs (b + m * C1.1) / sqrt (1 + m^2) = r1 /\n    abs (b + m * C2.1) / sqrt (1 + m^2) = r2.
Proof.
admit.
Qed.
####