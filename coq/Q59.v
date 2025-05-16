####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The blue function, as identified from the diagram, is f(x) = exp(x) + x^2. *)
Definition blue_function (x : R) : R := exp x + x ^+ 2.

Theorem blue_function_limit_neg_infty :
  \lim_(x --> -oo) blue_function x = +oo.
Proof. Admitted.
####