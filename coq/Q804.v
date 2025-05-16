####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TSB_Angle_Theorem.

Variable R : realType.

Variables A B S T U V : R^2.

Hypothesis H_cyclic : on_circle A S /\ on_circle A T /\ on_circle A U /\ on_circle A V.

Variable x y : R.

Hypotheses
  (H_TSB : is_angle T S B)
  (H_TSB_val : angle_deg T S B = 3 * y)
  (H_STB_val : angle_deg S T B = 3 * x)
  (H_TBU_val : angle_deg T B U = 2 * x + 15)
  (H_UVB_val : angle_deg U V B = y + 16).

Theorem value_of_angle_TSB : 3 * y = 24.
Proof. Admitted.

End TSB_Angle_Theorem.
####