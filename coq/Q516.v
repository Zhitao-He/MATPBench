####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables (M N Q R L : R^2).
Variables (x y w : R).

Hypotheses
  (L_on_NR : exists a b : R, 0 < a < 1 /\ b = 1 - a /\ L = a *: N + b *: R)
  (L_on_MQ : exists c d : R, 0 < c < 1 /\ d = 1 - c /\ L = c *: M + d *: Q)
  (MN : `|N - M| = 2*y + 5)
  (NQ : `|Q - N| = 3*x + 2)
  (QR : `|Q - R| = 3*y)
  (MR : `|R - M| = 4*x - 2)
  (ML : `|L - M| = w)
  (QL : `|Q - L| = 12).

Theorem sides_diagonal_value_w_eq_12 : w = 12.
Proof. Admitted.
####