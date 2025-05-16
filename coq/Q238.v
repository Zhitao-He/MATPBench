####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let f(x) be the function whose graph is depicted: it is a smooth curve with at least two local extrema, failing the horizontal line test.
   Thus, f is not injective on R, and so does not have an inverse function on R. *)

Variable f : R -> R.

Hypothesis H_graph :
  (* The function f is continuous on R, and there exist a1 < a2 < a3 in R such that f(a1) = f(a3) <> f(a2), i.e., f takes the same value at two different points *)
  exists a1 a2 a3 : R,
    a1 < a2 /\ a2 < a3 /\
    f a1 = f a3 /\ f a1 <> f a2.

Theorem graph_not_invertible :
  ~(exists g : R -> R, forall x : R, f (g x) = x /\ g (f x) = x).
Proof. Admitted.
####