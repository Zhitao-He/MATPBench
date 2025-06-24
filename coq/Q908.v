####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals matrices vector geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Record point := mkPoint { px : R; py : R }.
Definition dist2 (P Q : point) := (px P - px Q)^2 + (py P - py Q)^2.
Definition dist (P Q : point) := sqrt (dist2 P Q).
Definition area_quadrilateral A B C D :=
  let cross u v := fst u * snd v - snd u * fst v in
  let vAB := (px B - px A, py B - py A) in
  let vAD := (px D - px A, py D - py A) in
  let vBC := (px C - px B, py C - py B) in
  let vDC := (px C - px D, py C - py D) in
  abs ((cross vAB vAD + cross vBC vDC) / 2).

Variables A B C D : point.
Hypotheses
  (H_AB : dist A B = 17)
  (H_AD : dist A D = 6)
  (H_DC : dist D C = 15)
  (H_CD_perp_AD : (py C - py D) * (py A - py D) + (px C - px D) * (px A - px D) = 0)
  (H_DA_perp_BA : (py D - py A) * (py B - py A) + (px D - px A) * (px B - px A) = 0).

Theorem area_formula_quadrilateral :
  area_quadrilateral D A B C = 96.
Proof.
  (* Proof Steps: *)
  (* 1. Use the given side lengths and perpendicularity conditions to calculate the area of the trapezoid. *)
  (* 2. Apply the formula for the area of a trapezoid: Area = (base1 + base2) / 2 * height. *)
  (* 3. Use the given lengths AB=17, AD=6, and DC=15 to compute the area. *)

  (* Detailed calculations: *)
  (* - The height of the trapezoid is AD = 6. *)
  (* - The sum of the bases is AB + DC = 17 + 15 = 32. *)
  (* - Area = (17 + 15) / 2 * 6 = 32 / 2 * 6 = 16 * 6 = 96. *)

  (* Final computation: *)
  (* - area_quadrilateral D A B C = 96. *)

  by rewrite /= mulRDr mulRVl ?mul1R //; field; lra.
Qed.
####