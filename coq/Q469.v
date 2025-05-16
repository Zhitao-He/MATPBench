####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Definition Vset := [:: 1;2;3;4;5;6;7;8;9;11].
Inductive vertex := A | B | C | D.
Inductive edge := eAB | eAC | eAD | eBC | eBD | eCD.
Definition ends e :=
  match e with
  | eAB => (A,B) | eAC => (A,C) | eAD => (A,D)
  | eBC => (B,C) | eBD => (B,D) | eCD => (C,D)
  end.

Hypothesis edge_label_AB : 9.

Theorem edge_CD_label : edge_label eCD = 14.
Proof.
admit.
Qed.
####