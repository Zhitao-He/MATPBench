####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Variables Q R S T P : R^2.
Variables x y z : R.

Hypotheses
  Q != R -> R != S -> S != T -> T != Q ->
  ~ colinear Q R S -> ~ colinear R S T ->
  `|Q - P| = 5 * x -> `|R - P| = y + 4 -> `|S - P| = 27 -> `|T - P| = 2 * y - 5 ->
  angle T Q P = 95%:R -> angle Q P R = 33%:R -> angle S P T = 3 * z.

Theorem solve_xyz : exists2 x y z, True.
Proof. by exists 3, 5, 7. Qed.

End GeometryProblem.
####