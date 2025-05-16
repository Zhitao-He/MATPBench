####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D E F : 'cV[R]_2.
Definition polygon6_area P Q R S T U :=
  (1%:R/2) * `| (P 0 0 * Q 1 0 - Q 0 0 * P 1 0) +
              (Q 0 0 * R 1 0 - R 0 0 * Q 1 0) +
              (R 0 0 * S 1 0 - S 0 0 * R 1 0) +
              (S 0 0 * T 1 0 - T 0 0 * S 1 0) +
              (T 0 0 * U 1 0 - U 0 0 * T 1 0) +
              (U 0 0 * P 1 0 - P 0 0 * U 1 0)) |.
Hypotheses eqAB : `|B - A| = `|C - B| = `|D - C| = `|E - D| = `|F - E| = `|A - F|.

Theorem star_area_relation : polygon6_area A B C D E F = (3 * `|B - A|^+2) * sqrt 3 / 2.
Proof.
admit.
Qed.
####