####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables W L X N Z K : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_LWX : angle L W X = 53%:R.
Hypothesis H_parallel_WL_XE : parallel W L X E.
Hypothesis H_parallel_XN_ZK : parallel X N Z K.

Theorem measure_angle_XZK : angle X Z K = 53%:R.
Proof.
  (* Using parallel lines and vertical angles properties *)
  have H_vertical_angles : angle W X E = angle N X Z by apply: vertical_angle.
  have H_corresponding_angles : angle L W X = angle X Z K by apply: parallel_property_ipsilateral_internal_angle.
  rewrite H_angle_LWX in H_corresponding_angles.
  by [].
Qed.
####