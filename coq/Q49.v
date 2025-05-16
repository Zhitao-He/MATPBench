From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition A := (0, 0).
Definition speed := 40%:R.
Definition t := 0.5%:R.
Definition AB_len := speed * t.
Definition B := (AB_len, 0).

Definition theta_A := (45%:R) * (PI / 180).
Definition theta_B := (15%:R) * (PI / 180).

(* Solve the position of M using two lines with known angles *)
Definition direction (theta : R) : R * R :=
  (cos theta, sin theta).

Definition line_from (P : R * R) (v : R * R) (t : R) : R * R :=
  (P.1 + t * v.1, P.2 + t * v.2).

(* Intersection of two such lines gives M. *)
Theorem bearings_intersection_defined :
  exists M : R * R, True.
Proof.
(* Requires solving simultaneous linear equations *)
admit.
Qed.
####