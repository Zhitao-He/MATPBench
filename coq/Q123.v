####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_and_two_circles_radius
    (a b : R)
    (h : forall (r_big r_small : R),
      0 < r_big ->
      0 < r_small ->
      let s := 10 in
      (* Coordinates: place square with bottom left at (0,0), so top right at (s,s),
         and one vertex (bottom left) at center of big circle *)
      (* Big circle: center at (0,0), radius r_big *)
      (* Small circle: tangent to top and right sides, and externally tangent to big circle *)
      r_big = s * (1 + / (sqrt 2 - 1)) /\
      r_small = a - b * sqrt 2 /\
      (* The center of small circle is at (s - r_small, s - r_small), and
         its distance from the center of the big circle is r_big - r_small *)
      ((s - r_small)^2 + (s - r_small)^2 = (r_big - r_small)^2)) :
    a + b = 50.
Proof. Admitted.
####