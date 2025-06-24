From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Theorem: The harmonic potential energy kx^2/2 is not larger than E at x=0 *)
Theorem harmonic_potential_not_larger_at_zero
    (k E : R)  (* k: typically a spring constant or similar, E: an energy level *)
    (hk : 0 < k)  (* k is positive *)
    (hE : 0 < E) :  (* E is positive *)
    (k * 0 ^+ 2 / 2 <= E).  (* At x=0, kx^2/2 = 0, which is not larger than E (since 0 <= E) *)
Proof. Admitted. (* The proof would involve substituting x=0 and simplifying to show 0 <= E *)
####