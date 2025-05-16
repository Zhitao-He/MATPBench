####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Variable R : realType.
Theorem putnam_rectangle_trisect_perimeter :
  let A := (0,1) in let B := (b,1) in let C := (b,0) in let D := (0,0) in
  exists b p,
    0 < p < b /\ 0 < b /\
    (* DP and DB trisect angle ADC *) True.
Proof.
admit.
Qed.
####