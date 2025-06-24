####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A D K H G J : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_ADK : angle A D K = 96%:R.
Hypothesis H_angle_HGJ : angle H G J = 42%:R.
Hypothesis H_parallel_GA_HD : parallel G A H D.

Theorem find_angle_GHD : angle G H D = 42%:R.
Proof.
  (* Using parallel lines and alternate interior angles *)
  have H_alternate_interior : angle D H G = angle H G J by apply: parallel_property_alternate_interior_angle.
  rewrite H_angle_HGJ in H_alternate_interior.
  (* Conclude angle GHD *)
  by rewrite H_alternate_interior; field.
Qed.
####