####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The rectangle has corners at (0,0), (40,0), (40,20), (0,20) *)
(* The largest ellipse that fits exactly inside: 
   - is tangent to all four sides of the rectangle 
   - is centered at (20,10) *)

Theorem largest_ellipse_in_rectangle_center :
  let rectangle := fun (p : R * R) => 
    (0 <= p.1 <= 40) /\ (0 <= p.2 <= 20) in
  exists a b rx ry,
    (a = 20) /\
    (b = 10) /\
    (forall (x y : R),
      (( (x - a)^2) / (rx^2) + ((y - b)^2) / (ry^2) <= 1) ->
      rectangle (x, y)) /\
    (rx = 20) /\ (ry = 10).
Proof. Admitted.
####