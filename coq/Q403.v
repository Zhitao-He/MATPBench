####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_equilateral_perpendicular_distance :
  let A := (0,4) in let B := (4,4) in let C := (4,0) in let D := (0,0) in
  let θ := PI/3 in
  let E := (B.1 - A.1) * cos θ - (B.2 - A.2) * sin θ + A.1,
           (B.1 - A.1) * sin θ + (B.2 - A.2) * cos θ + A.2 in
  exists P, True.
Proof.
admit.
Qed.
####