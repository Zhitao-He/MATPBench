####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem chain_of_rings_42
    (outer_radius inner_radius : R)
    (l_total : R)
    (n : nat)
    (h_outer : outer_radius = 3)
    (h_inner : inner_radius = 2)
    (h_total : l_total = 170) (* in centimeters *)
    (h_spacing : forall k : nat, 1 <= k < n -> (* centers of consecutive rings are 2*inner_radius cm apart, i.e., 4 cm *)
        True)
    :
    n = 42.
Proof. Admitted.
####