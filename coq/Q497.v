####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points of the plane *)
Variables W X Y Z : 'rV[R]_2.

Hypotheses
  (distinct_WX : W != X)
  (distinct_XY : X != Y)
  (distinct_YZ : Y != Z)
  (distinct_ZW : Z != W)
  (parallelogram_shape : parallelogram W X Y Z)
  (length_ZY : `|Y - Z| = 28)
  (length_YX : `|Y - X| = 24)
  (angle_ZWX : angle Z W X = 105%:R).

Theorem measure_angle_WZY_75 :
  angle W Z Y = 75%:R.
Proof. Admitted.
####