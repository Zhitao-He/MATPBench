From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GlobalMaximumProblem.

Variable R : realType.

(* Define the function f(x) = 2 * sin(x) + 2 *)
Definition f (x : R) : R := 2 * sin x + 2.

(* Theorem: The global maximum of f is 4 *)
(* This is proven by showing two things:
   1. For all x, f(x) <= 4.
   2. There exists an x0 such that f(x0) = 4. *)
Theorem global_maximum_of_f_is_4 :
  (forall x : R, f x <= 4) /\
  (exists x0 : R, f x0 = 4).
Proof.
(* Here, we would provide the proof. For example:
   - For the first part, use the fact that the range of sin(x) is [-1, 1], so 2 * sin(x) is in [-2, 2], and thus f(x) is in [0, 4].
   - For the second part, choose x0 = PI / 2 (or 90 degrees), where sin(x0) = 1, so f(x0) = 2 * 1 + 2 = 4.
   For the sake of this example, we'll leave the proof as an exercise. *)
Admitted.

End GlobalMaximumProblem.
####