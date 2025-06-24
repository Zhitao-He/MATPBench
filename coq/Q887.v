####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Parallelogram_Angles.

Variable R : realType.

Variables B C D F : R^2.

Hypothesis BC_parallel_DF : is_parallel (B -- C) (D -- F).
Hypothesis BDFC_is_parallelogram : is_parallelogram B D F C.

Variables x y : R.

Hypothesis BC_length : dist B C = 4 * x - 17.
Hypothesis DF_length : dist D F = 2 * x - 1.
Hypothesis angle_CBF : angle C B F = 3 * y + 5.
Hypothesis angle_DFB : angle D F B = 5 * y - 13.

Theorem value_y_9 : y = 9.
Proof.
  (* Given that BDFC is a parallelogram: *)
  (* 1. Opposite sides are equal in length: BC = DF. *)
  (*    => 4 * x - 17 = 2 * x - 1 => 2 * x = 16 => x = 8. *)
  (* 2. Opposite angles are equal in measure: angle CBF = angle DFB. *)
  (*    => 3 * y + 5 = 5 * y - 13 => 18 = 2 * y => y = 9. *)
  by [].
Qed.

End Parallelogram_Angles.
####