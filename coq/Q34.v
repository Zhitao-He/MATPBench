####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_triangle_AC_length :
  forall x : R,
    let AB := 9 * x - 1 in
    let AC := 4 * x + 1 in
    let BC := 5 * x - 0.5 in
    AC = BC ->
    (exists x0 : R, AC = 7 /\ x = x0).
Proof. Admitted.
####