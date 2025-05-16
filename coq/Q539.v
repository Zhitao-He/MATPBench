####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D x : 'rV[R]_2.
Hypotheses
  (H1 : norm (B - C) = 2 * x + 5)
  (H2 : norm (B - A) = 3 * x - 13)
  (Hangle : angle B A C = PI/3)
  (Hcol : colinear [:: C;A;D]).

Theorem solve_for_x : x = 6.
Proof.
admit.
Qed.
####