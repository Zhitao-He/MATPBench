####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables M P Q R_ : 'rV[R]_2.

Variable x : R.

Hypotheses
  (HMP : 0 < x)
  (angle_MRP : angle M R_ P = x)
  (angle_PQM : angle P Q R_ = 2 * x)
  (angle_QRP : angle Q R_ P = 5 * x)
  (angle_MPR : angle M P R_ = 4 * x).

Theorem measure_of_angle_PMR :
  x = 30.
Proof. Admitted.
####