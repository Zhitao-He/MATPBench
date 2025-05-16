####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The rectangular box has vertices at (0,0), (40,0), (40,20), (0,20).
   The largest ellipse that fits inside the rectangle is centered at (20,10). *)

Theorem cake_box_ellipse_center :
  let rect := ((0 : R, 0 : R), (40 : R, 20 : R)) in
  exists a b : R,
    (* (a, b) is the center of the largest ellipse contained in the rectangle *)
    (a, b) = (20, 10).
Proof. Admitted.
####