####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points and angle notation *)
Variables P Q R S : Type.
Variable angle : P -> Q -> R -> R.

(* Let x be the unknown angle at P *)
Variable x : R.

Hypothesis angle_P : angle S P Q = x.
Hypothesis angle_Q : angle P Q R = 2 * x - 16.
Hypothesis angle_R : angle Q R S = 2 * x.
Hypothesis angle_S : angle R S P = x + 10.

Theorem measure_of_angle_PSR :
  angle P S R = 71.
Proof. Admitted.
####