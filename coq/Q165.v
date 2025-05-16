####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points: O, G, L, E, S on circle omega *)
Variables (O G L E S : 'rV[R]_2).

Hypothesis cyclic_OGLES : on_circle O G L E S.

(* Distances labeled in diagram *)
Hypothesis LG : dist L G = 3.
Hypothesis GE : dist G E = 4.
Hypothesis ES : dist E S = 9.

(* x is the length OG (from diagram notation) *)
Definition x := dist O G.

Theorem circle_power_length_x_value :
  round_to_nearest_tenth x = 13.
Proof. Admitted.
####