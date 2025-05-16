####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points S, T, U, R forming parallelogram STUR, with angles at T and R as shown *)
Variables S T U R : 'rV[R]_2.

Hypothesis parallelogram_STUR : parallelogram S T U R.

Variable x : R.

Hypothesis angle_T : angle S T U = (4 * x + 6)%:R.
Hypothesis angle_R : angle U R S = (6 * x - 54)%:R.

Theorem value_of_x_STUR :
  x = 30.
Proof. Admitted.
####