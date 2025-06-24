####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables x y : R.

Hypothesis H_DE : `|D - E| = 6 * x - 12`.
Hypothesis H_FE : `|F - E| = 4 * y`.
Hypothesis H_GD : `|G - D| = 6 * y - 42`.
Hypothesis H_GF : `|G - F| = 2 * x + 36`.
Hypothesis H_parallelogram : forall A B C D, parallelogram A B C D -> `|A - B| = `|C - D|` /
  `|B - C| = `|D - A|`.

Theorem value_of_y : y = 21.
Proof.
  (* Using parallelogram property: opposite sides are equal *)
  have H_opposite_sides : `|D - E| = `|G - F|` /
    `|F - E| = `|G - D|` by apply: H_parallelogram.
  rewrite H_DE H_GF in H_opposite_sides.
  rewrite H_FE H_GD in H_opposite_sides.
  (* Solve for y *)
  have H_eq1 : 6 * x - 12 = 2 * x + 36 by move/andP: H_opposite_sides => [-> _].
  have H_eq2 : 6 * y - 42 = 4 * y by move/andP: H_opposite_sides => [_ ->].
  by move: H_eq2 => /eqP ->; field.
Qed.
####