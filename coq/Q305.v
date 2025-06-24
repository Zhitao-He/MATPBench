####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem two_circles_centered_at_origin_k_value :
  let O := (0:R, 0:R) in
  let P := (8:R, 6:R) in
  exists r1 r2 : R,
    0 < r2 < r1 /\ 
    norm P = r1 /\ 
    exists k : R,
      let S := (0:R, k:R) in
      norm S = r2 /\ 
      k = 7.
Proof. Admitted.
####