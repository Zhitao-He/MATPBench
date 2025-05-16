####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* The cylinder has height 5 meters and base circumference 24 meters.
   Points A and B are on the top and bottom edge respectively, straight above/below.
   The shortest path along the surface from A to B equals 13 meters. *)

Theorem cylinder_shortest_path_ant :
  let h := 5%:R in
  let c := 24%:R in
  let shortest_path := Num.sqrt (h^+2 + c^+2) in
    shortest_path = 13%:R.
Proof. Admitted.
####