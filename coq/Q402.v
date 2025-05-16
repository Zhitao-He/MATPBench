####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_equal_angles_x_value :
  forall x,
    let AB := x + 4 in let AC := 3*x - 1 in let BC := 2*x + 2 in
    0 < AB -> 0 < AC -> 0 < BC ->
    let cosA := (AC^+2 + AB^+2 - BC^+2) / (2 * AC * AB) in
    let cosB := (BC^+2 + AB^+2 - AC^+2) / (2 * BC * AB) in
    cosA = cosB -> x = 3.
Proof.
admit.
Qed.
####