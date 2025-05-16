####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem ellipse_equation_characterization :
  forall x y : R,
    ((x + 2)^2 / 4 + (y - 2)^2 / 9 = 1) <->
    (exists (a b : R), (0 < a) /\ (0 < b) /\
      (a = 2) /\ (b = 3) /\
      ((x + 2)^2 / (a^2) + (y - 2)^2 / (b^2) = 1)).
Proof. Admitted.
####