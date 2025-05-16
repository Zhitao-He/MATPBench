####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points: L, A, D, P, F, G are in the plane *)
Variables L A D P F G : 'rV[R]_2.

(* There is a circle centered at A passing through L, D, P, F, G *)
Hypothesis on_circle_L : dist L A = dist D A.
Hypothesis on_circle_D : dist D A = dist P A.
Hypothesis on_circle_P : dist P A = dist F A.
Hypothesis on_circle_F : dist F A = dist G A.

Theorem length_LA_is_12 : dist L A = 12.
Proof. Admitted.
####