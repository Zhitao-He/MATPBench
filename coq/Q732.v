####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E : R^2.
Variable x : R.

Hypotheses
  (AB : `|B - A| = 10)
  (AE : `|E - A| = 25/4)
  (BC : `|C - B| = x + 2)
  (DE : `|E - D| = x - 1).

Theorem length_BC_is_8 : `|C - B| = 8.
Proof. Admitted.
####