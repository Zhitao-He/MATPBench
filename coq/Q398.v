####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define points in 3D space *)
Definition point3 := R * R * R.

(* Coordinates of the center P of one square base, located at (8,8,0) *)
Definition P : point3 := (8%:R, 8%:R, 0%:R).

(* Coordinates of corner Q of the opposite square base, at (16,16,4) *)
Definition Q : point3 := (16%:R, 16%:R, 4%:R).

(* Euclidean distance in 3D *)
Definition dist3 (A B : point3) : R :=
  let: (x1, y1, z1) := A in
  let: (x2, y2, z2) := B in
    Num.sqrt ((x2 - x1)^+2 + (y2 - y1)^+2 + (z2 - z1)^+2).

Theorem box_center_to_opposite_corner_distance :
  dist3 P Q = 12%:R.
Proof. Admitted.
####