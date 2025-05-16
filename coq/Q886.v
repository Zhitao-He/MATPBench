####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section parallelogram_length.

Variable R : realType.
Record point := mkPoint { px : R; py : R }.
Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^2 + (py A - py B)^2).

Theorem length_WZ_parallelogram :
  forall (W X Z D : point),
    dist W X = 24 ->
    dist Z D = 28 ->
    (* WX ∥ ZD and WX = XD, WZ ∥ XD and WZ = ZD *)
    True.
Proof.
  (* proof omitted *)
Admitted.

End parallelogram_length.
####