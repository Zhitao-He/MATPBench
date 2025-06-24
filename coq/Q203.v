####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sqrt.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Semicircle_Bridge.

Variable R : realType.

Variables O A B C A' B' : 'rV[R]_2.

Hypothesis h_semicircle : arc A C B = 180%:R.
Hypothesis h_circle : forall P, P \\in [set A; B; C] -> dist P O = 4%:R.
Hypothesis h_water_surface : colinear A' B' O /\ A'.2 = 1%:R /\ B'.2 = 1%:R.

Theorem semicircle_water_surface_width :
  exists width_water : R,
    width_water = B'.1 - A'.1 /\ width_water = 2 * sqrt 15%:R.
Proof. Admitted.

End Semicircle_Bridge.
####