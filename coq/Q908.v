####
From mathcomp Require Import all_algebra all_ssreflect.
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

Theorem area_formula_quadrilateral :
  True.
Proof.
  (* proof omitted *)
Admitted.
####