####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Coordinates for cube vertices labeled as in diagram *)
Let A := (0, 0, 7%:R).
Let B := (7%:R, 0, 7%:R).
Let C := (7%:R, 7%:R, 7%:R).
Let D := (0, 7%:R, 7%:R).
Let E := (0, 0, 0).
Let F := (7%:R, 0, 0).
Let G := (7%:R, 7%:R, 0).
Let H := (0, 7%:R, 0).

Definition dist3 (P Q : R * R * R) : R :=
  let: (x1,y1,z1) := P in let: (x2,y2,z2) := Q in
    Num.sqrt ((x1 - x2)^+2 + (y1 - y2)^+2 + (z1 - z2)^+2).

Theorem cube_AG_length :
  dist3 A G = Num.sqrt 147.
Proof. Admitted.
####