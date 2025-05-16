####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition A : R * R := (0, 0).
Definition B : R * R := (8, 0).
Definition C : R * R := (8, 8).
Definition D : R * R := (0, 8).

(* Semicircle with diameter BC, center (8,4), radius 4 *)
Definition semicircle_BC p :=
  let center := (8,4) in let r := 4 in
    (fst p - fst center)^2 + (snd p - snd center)^2 = r^2 /
    snd p >= 0 /\snd p <= 8.

(* Semicircle with diameter CD, center (4,8), radius 4 *)
Definition semicircle_CD p :=
  let center := (4,8) in let r := 4 in
    (fst p - fst center)^2 + (snd p - snd center)^2 = r^2 /
    fst p >= 0 /\fst p <= 8.

Definition square_region p :=
  0 <= fst p <= 8 /\0 <= snd p <= 8.

Definition shaded p :=
  square_region p /\(semicircle_BC p / semicircle_CD p).

Definition square_area := 8%:R^+2.
Definition quarter_area := (PI * 4^+2) / 4.

Theorem shaded_region_area :
  let S := square_area - 2 * quarter_area in
  exists S', S' = S.
Proof.
admit.
Qed.
####