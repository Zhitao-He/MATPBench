####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Find_Value_of_a.

Variable R : realType.

Variables L W X E Z K : R2.
Variable a : R.
Variable b : R.

(* Parallel lines hypotheses *)
Hypothesis WL_parallel_XE : is_parallel (Line W L) (Line X E).
Hypothesis XN_parallel_ZK : is_parallel (Line X N) (Line Z K). (* Note: N is not defined in the original, but we assume XN is a line parallel to ZK through X *)

(* Angle hypotheses *)
Hypothesis angle_LWX : MeasureOfAngle L W X = 3 * a + 40.
Hypothesis angle_WXE : MeasureOfAngle W X E = 2 * a + 25.
Hypothesis angle_XZK : MeasureOfAngle X Z K = 5 * b - 26.

(* Theorem to prove: a = 23 *)
Theorem value_of_a : a = 23.
Proof. Admitted.

End Find_Value_of_a.
####