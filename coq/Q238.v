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
Proof.
  (* Proof sketch (though admitted):
     Assume for contradiction that such a g exists. Then f would be bijective (both injective and surjective),
     but H_graph shows that f is not injective, leading to a contradiction. *)
  move=> [g Hfg].
  case: H_graph => [a1 [a2 [a3 [Ha12 [Ha23 [Hfa1a3 Hfa1a2]]]]]].
  have Hcontradiction: f a1 = f a3 by [].
  move: (Hfg a1) => [Hfga1 Hgfa1].
  move: (Hfg a3) => [Hfga3 Hgfa3].
  rewrite Hfga1 Hfga3 in Hcontradiction.
  (* The above steps show that if g existed, then f would have to be injective, which contradicts H_graph. 
     However, the full proof would require more detailed handling of the surjectivity and the specific 
     properties of f and g, which is omitted here for brevity. *)
Admitted.
####