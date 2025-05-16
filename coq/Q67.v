####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* There are 8 equally spaced black dots on the horizontal axis, distance 1cm apart.
   Semicircles with diameters between each pair of adjacent dots are drawn, alternating
   above and below the axis, forming a spiral pattern of 7 semicircles.
   The shaded grey pattern is the union of alternate semicircular regions (see diagram).
   The total shaded area is (1/8) * k * pi, to compute the value of k. *)

Theorem spiral_semicircle_shaded_area :
  let n := 8 in
  let pi := Num.pi in
  let shaded_area := \sum_(i < n.-1 | odd i.+1)
      (Num.pi * ((i.+1)%:R / 2)^2 - Num.pi * (i%:R / 2)^2)
  in
    shaded_area = (1%:R / 8%:R) * 121%:R * pi.
Proof. Admitted.
####