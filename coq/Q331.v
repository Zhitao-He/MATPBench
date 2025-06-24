####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals pi.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section BeltAroundCircles.

Variable R : realType.

(* Radius of each circle is 10 cm *)
Definition r := 10%:R.

(* Goal: Belt length in the form a + b\pi, where a + b = 80 *)
Theorem belt_length_property :
  exists (a b : R),
    (exists belt_length : R,
      belt_length = a + b * PI /\
      (* Belt is tightly drawn around three circles of radius r, arranged in a line or equilateral triangle *)
      True) /\
    a + b = 80%:R.
Proof. Admitted.

End BeltAroundCircles.
####