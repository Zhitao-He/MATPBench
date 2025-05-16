####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import nat_nat natdiv.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

(* There are six edge lengths in a tetrahedron. Four are given: 2, 3, 4, 7. Let the remaining two be x and y. *)

Variable x y : nat.

Theorem pyramid_side_sum :
  (2 <= x)%N /\ (2 <= y)%N /\
  (* All six triples of edges forming faces must be able to form triangles *)
  [/\ (2 + 3 > 4)%N, (2 + 4 > x)%N, (3 + 4 > y)%N,
      (2 + x > 7)%N, (3 + y > 7)%N, (4 + 7 > x)%N,
      (x + y > 7)%N, (2 + 7 > y)%N, (3 + 7 > x)%N,
      (4 + y > 2)%N, (x + 4 > y)%N, (x + y = 11)%N,
      (* All sides are positive integers *)
      (x > 0)%N, (y > 0)%N] ->
  (x + y = 11)%N.
Proof. Admitted.
####