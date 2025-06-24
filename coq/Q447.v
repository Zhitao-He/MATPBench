####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclid.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition AB := 4%:R.
Definition BC := 7%:R.
Definition CD := 10%:R.
Definition DA := 5%:R.

(* A quadrilateral ABCD with given side lengths and non-collinearity constraints *)

Definition valid_ac (k : nat) : bool :=
  let AC := k%:R in
  (* Check triangle inequalities for triangles ABC and ACD *)
  (AB + BC > AC) && (AB + AC > BC) && (BC + AC > AB) &&
  (AC + CD > DA) && (AC + DA > CD) && (CD + DA > AC).

Definition possible_ac_lengths : seq nat :=
  filter valid_ac (iota 1 20). (* Reasonable upper bound from triangle inequalities *)

Definition count_possible_ac_lengths : nat := size possible_ac_lengths.

Theorem number_of_possible_ac_lengths : count_possible_ac_lengths = 5.
Proof.
  (* We evaluate valid_ac for k = 1 to 20 and count the ones that return true. *)
  vm_compute.
  reflexivity.
Qed.
####