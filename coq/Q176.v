####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Variable R : realType.
Theorem find_x_in_diagram :
  forall x y : R,
    68 + (3 * x - 15) + 2 * x = 180 /\
    (y ^ 2) + 2 * x + (3 * x - 15) = 180 ->
    x = 34.
Proof. Admitted.
####