####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_cos_angle_SRT :
  exists (S R T : 'e2[R]), 
    let dSR := norm (S - R) in
    let dRT := norm (R - T) in
    let dTS := norm (T - S) in
    [/\ dSR = 5, dRT = 3, dTS = 4,
        angle S R T = PI/2] /\
    cos (angle S R T) = 3 / 5.
Proof. Admitted.
####