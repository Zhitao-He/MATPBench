####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem pentagon_angle_H :
  forall (x : R),
    let aEF := x in
    let aFG := x + 20 in
    let aGH := x + 5 in
    let aHJ := x - 5 in
    let aJ := x + 10 in
      aEF + aFG + aGH + aHJ + aJ = 540 ->
      (x - 5) = 97.
Proof. Admitted.
####