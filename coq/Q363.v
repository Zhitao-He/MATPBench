####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section RightTriangleMedianAltitude.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

(* Right angle at B *)
Hypothesis H_right_angle : (B - A) *d (C - A) = 0.

(* BD is median *)
Hypothesis H_median : D = (A + C) / 2%:R.

(* BE is altitude *)
Hypothesis H_altitude : (B - E) *d (C - A) = 0.

(* BD = 2 * DE *)
Hypothesis H_ratio : norm (D - B) = 2%:R * norm (B - E).

Theorem AB_EC_ratio :
  norm (A - B) / norm (E - C) = 2%:R * sqrt 3%:R.
Proof. Admitted.

End RightTriangleMedianAltitude.
####