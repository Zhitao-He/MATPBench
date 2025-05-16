####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences.
Require Import Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition point := R * R.

Definition weighted_sum (a b : point) (k l : R) : point :=
  ((k * a.1 + l * b.1) / (k + l), (k * a.2 + l * b.2) / (k + l)).

Fixpoint A (i : nat) : point :=
  match i with
  | 0%N => (0,0)
  | 1%N => (0,0)
  | S i' => weighted_sum (A i') (B i') 1 2019
  end
with B (i : nat) : point :=
  match i with
  | 0%N => (1,0)
  | 1%N => (1,0)
  | S i' => weighted_sum (B i') (C i') 1 2019
  end
with C (i : nat) : point :=
  match i with
  | 0%N => (1,1)
  | 1%N => (1,1)
  | S i' => weighted_sum (C i')
####