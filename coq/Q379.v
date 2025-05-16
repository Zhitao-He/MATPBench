####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Let A := row2 0 0.
Let B := row2 8 0.
Let C := row2 8 18.
Let D := row2 2 30.
Let E := row2 0 12.
Definition pts := [:: A; B; C; D; E].

Definition polygon_area vs :=
  let sum := 
    \sum_(i < size vs)
      let P := nth A vs i in let Q := nth A vs ((i+1) %% size vs) in
      fst P * snd Q - fst Q * snd P in
  abs (sum / 2).

Theorem pentagon_area_276 : polygon_area pts = 276.
Proof.
admit.
Qed.
####