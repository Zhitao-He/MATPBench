####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A, B, C in Euclidean plane, with side lengths AB = 13, BC = 15, AC = 12 *)
Variables A B C : 'rV[R]_2.

Hypothesis hAB : `|A - B| = 13.
Hypothesis hBC : `|B - C| = 15.
Hypothesis hAC : `|A - C| = 12.

(* The measure of angle BAC in degrees is 180 * arccos(11/39) / pi *)
Theorem triangle_ABC_angle_BAC_value :
  let angle_BAC := acos (((hAB ^+ 2) + (hAC ^+ 2) - (hBC ^+ 2)) / (2 * hAB * hAC)) in
  180 * angle_BAC / PI = 180 * acos (11 / 39) / PI.
Proof. Admitted.
####