From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define the function f(x) = (x^3 + 3x^2 - 6x - 8)/4, a cubic polynomial *)
Definition f (x : R) : R := ((x ^+ 3) + 3 * (x ^+ 2) - 6 * x - 8) / 4.

(* Theorem: The function f is not periodic, i.e., there is no nonzero period T such that f(x + T) = f(x) for all x *)
Theorem cubic_not_periodic :
  ~ (exists T : R, T <> 0 /\ forall x : R, f (x + T) = f x).
Proof. Admitted.
####