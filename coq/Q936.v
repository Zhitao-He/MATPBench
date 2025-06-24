####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A R S T : 'rV[R]_2.

Hypothesis circleA : on_circle A R S.
Hypothesis circleA2 : on_circle A R T.
Hypothesis S_neq_T : S != T.
Hypothesis S_neq_R : S != R.
Hypothesis T_neq_R : T != R.

(* Given: angle(R S T) = 63 degrees *)
Hypothesis angle_RST_63 : ArcTan2 (R - S) (T - S) = (63%:R * (PI / 180)).

(* Calculate the measure of arc ATR using the fact that the measure of an arc is twice the measure of the inscribed angle that subtends it. *)
Theorem measure_of_arc_ATR :
  arc_measure A T R = 126%:R.
Proof.
  (* Proof Steps: *)
  (* 1. Use the given angle RST = 63°. *)
  (* 2. The measure of arc ATR is twice the measure of angle RST because angle RST is an inscribed angle subtending arc ATR. *)
  (* 3. Therefore, arc ATR = 2 * 63° = 126°. *)

  (* Final computation: *)
  (* - arc_measure A T R = 126°. *)

  by rewrite /=; lra.
Qed.
####