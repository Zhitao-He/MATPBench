####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals Lra.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

(* Ground points *)
Definition O := (0, 0).
Definition C := (-70, 0).  (* CD length is 140, so C is at -70 *)
Definition D := (70, 0).    (* and D at +70 *)

(* Balloon height *)
Variable h : R.
Hypothesis h_pos : h > 0.
Definition H := (0, 0, h).

(* Rope lengths *)
Hypothesis HC_len : sqrt (70^2 + 0 + h^2) = 150.
Hypothesis HD_len : sqrt (70^2 + 0 + h^2) = 130.

(* Find optimal point P on CD *)
Definition P (t : R) := (t, 0).  (* Parametric point on CD *)
Definition HP_len (t : R) := sqrt (t^2 + h^2).

(* Total rope length before and after *)
Definition original_length := 150 + 130.
Definition optimized_length := exists t, -70 <= t <= 70 /
  forall t', -70 <= t' <= 70 -> HP_len t <= HP_len t'.

(* Maximum savings *)
Theorem max_savings : original_length - optimized_length = 160.
Proof. Admitted.
####