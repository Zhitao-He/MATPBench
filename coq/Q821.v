####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variables B C D E F : 'rV[R]_2.
Variables x y : R.

Hypotheses
  (angle_BCD : triangle_angle B C D = 5 * y)
  (angle_CDF : triangle_angle C D F = 2 * x)
  (angle_BCF : triangle_angle B C F = 120)
  (angle_EFD : triangle_angle E F D = 108).

Theorem diagram_value_y_12 :
  y = 12.
Proof. Admitted.

End geometry_problem.
####