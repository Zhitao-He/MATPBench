####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import polynom reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let f be the real function defined by f(x) = x^3. *)
Definition f (x : R) : R := x ^+ 3.

Theorem cubic_function_degree :
  [exists p : {poly R}, 
      (size p = 4) /\
      (forall x : R, f x = p.[x])].
Proof. Admitted.
####