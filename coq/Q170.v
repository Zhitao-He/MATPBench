####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The angles formed by the transversal with lines m and n are given by (3x - 14)° and (2x + 25)°.
   Since m || n, these angles are equal (corresponding angles or alternate interior angles). *)
Theorem find_x_parallel_angles :
  exists x : R, (3 * x - 14) = (2 * x + 25).
Proof.
(*
  To find x, we solve the equation:
  3x - 14 = 2x + 25
  Subtract 2x from both sides:
  x - 14 = 25
  Add 14 to both sides:
  x = 39
*)
  exists 39.
  (* Verify that x = 39 satisfies the equation: *)
  by rewrite /= mulrDl mul1r subrK.
Qed.
####