####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CirclePowerTheorem.

Variable R : realType.
Variables A F E : 'rV[R]_2.
Variable x : R.

Hypothesis H_FB : `|F - B| = 9.
Hypothesis H_FC : `|F - C| = 6.
Hypothesis H_FD : `|F - D| = 6.
Hypothesis H_FE : `|F - E| = x.
Hypothesis H_circle_center_A : forall P, on_circle P A <-> `|P - A| = `|F - A|.

Theorem find_x_value : x = 4.
Proof.
  (* Using power of a point theorem *)
  have H_power : `|F - E| * `|F - B| = `|F - C| * `|F - D| by apply: circle_property_circular_power_chord_and_chord.
  rewrite H_FB H_FC H_FD in H_power.
  (* Solve for x *)
  have H_eq : x * 9 = 6 * 6 by field in H_power.
  by rewrite H_eq; field.
Qed.

End CirclePowerTheorem.
####