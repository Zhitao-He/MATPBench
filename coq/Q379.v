####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section PentagonArea.

Variable R : realType.

(* Define the vertices of the pentagon in order *)
Let A := (0, 0)%R.
Let B := (8, 0)%R.
Let C := (8, 18)%R.
Let D := (2, 30)%R.
Let E := (0, 12)%R.

(* Function to calculate polygon area using shoelace formula *)
Definition polygon_area (pts : seq (R * R)) : R :=
  let sum := 
    \sum_(i < size pts)
      let P := nth A pts i in
      let Q := nth A pts ((i + 1) %% size pts)%N in
      fst P * snd Q - fst Q * snd P in
  abs (sum / 2).

(* Theorem to prove the area is 144 *)
Theorem pentagon_area_144 : 
  polygon_area [:: A; B; C; D; E] = 144%:R.
Proof. Admitted.

End PentagonArea.
####