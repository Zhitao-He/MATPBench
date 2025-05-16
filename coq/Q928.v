####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables (A B C D E : R^2).
Variables (x y : R).

Hypotheses
  (parallelogram : forall (f : R^2 -> R^2), f C - f A = f D - f B)
  (diag_intersection : exists lambda mu : R, 0 < lambda < 1 /\ 0 < mu < 1 /\
      E = (1 - lambda) *: A + lambda *: C /\
      E = (1 - mu) *: B + mu *: D)
  (EA : `|E - A| = x)
  (EC : `|E - C| = 4 * y)
  (ED : `|E - D| = 3 * y + 4)
  (EB : `|E - B| = (2/3) * x).

Theorem value_of_y :
  y = 4/3.
Proof. Admitted.
####