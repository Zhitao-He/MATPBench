####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D x : 'rV[R]_2.
Hypotheses
  (HBC : norm (B - C) = 2 * x + 5)
  (HBA : norm (B - A) = 3 * x - 13)
  (Hangle : angle A B C = PI/3)
  (Hcol : colinear [:: C;A;D]).

Theorem solve_x_value :
  x = 6.
Proof.
admit.
Qed.
####