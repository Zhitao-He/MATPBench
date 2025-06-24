####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables O F E D I : 'rV[R]_2.
Variable x : R.

Hypothesis H_angle_FOE : angle O E F = 118%:R.
Hypothesis H_angle_LDA : angle L D A = 104%:R.
Hypothesis H_parallel_OD_FI : parallel O D F I.

Theorem find_OFI_measure : angle O F I = 118%:R.
Proof.
  (* Using parallel lines and transversal properties *)
  have H_corresponding_angles : angle O D F = angle F O I by apply: parallel_property_ipsilateral_internal_angle.
  (* Relate angles using adjacent complementary relationship *)
  have H_adjacent_complementary : angle D O F + angle F O E = 180%:R by apply: adjacent_complementary_angle.
  rewrite H_angle_FOE in H_adjacent_complementary.
  (* Solve for angle DOF *)
  have H_eq : angle D O F = 180%:R - 118%:R by move: H_adjacent_complementary => /eqP ->.
  (* Conclude angle OFI *)
  by rewrite H_eq H_corresponding_angles; field.
Qed.
####