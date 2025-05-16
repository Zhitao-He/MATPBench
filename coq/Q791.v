####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables
  (U B W V : 'rV[R]_2)
  (x : R).

Hypotheses
  (HUW : norm (U - W) = 3 * x - 6)
  (HBW : norm (B - W) = 8)
  (HUB : norm (U - B) = x + 2)
  (HTAW : norm (B - W) = norm (A - T))
  (HSVA : norm (U - B) = norm (R - A))
  (HTAR : norm (U - W) = norm (R - T))
  (norm_3 : norm (R - A) = 3)
  (norm_8 : norm (A - T) = 8).

Theorem length_of_line_UB_eq_36 : norm (U - B) = 36.
Proof. Admitted.
####