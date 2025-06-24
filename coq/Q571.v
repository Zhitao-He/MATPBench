####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D F G : 'rV[R]_2.
Variable x : R.

Hypothesis H_CBD : angle C B D = 55%:R.
Hypothesis H_FBG : angle F B G = 35%:R.
Hypothesis H_center_B : forall P, on_circle P B -> norm (P - B) = norm (A - B).

Theorem measure_arc_BFA : measure_arc B F A = 270%:R.
Proof.
  (* Using vertical angles and angle addition *)
  have H_vertical : angle C B D = angle G B A by apply: vertical_angle.
  have H_angle_sum : angle F B G + angle G B A = 180%:R by apply: angle_addition.
  rewrite H_FBG H_vertical in H_angle_sum.
  (* Using round angle property *)
  have H_round : angle F B A + angle A B F = 180%:R by apply: round_angle.
  (* Using arc property and center angle *)
  have H_arc_center : measure_arc B F A = 360%:R - (angle C B D + angle F B G) by apply: arc_property_center_angle.
  rewrite H_CBD H_FBG in H_arc_center.
  (* Solve for arc BFA *)
  by rewrite H_arc_center; field.
Qed.
####