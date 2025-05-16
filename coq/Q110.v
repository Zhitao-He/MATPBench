####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cylinder_cut_area_apmo_2012_2 :
  let r := 6%:R in
  let h := 8%:R in
  let theta := (120%:R * (PI / 180%:R)) in
  (* Flat unpainted face is a plane section of the cylinder
     through two points on the top rim subtending 120 degrees
     and the cylinder axis *)
  exists a b c : nat,
    (forall p : nat, p * p %| c -> p = 1) /\ (* c is squarefree *)
    let area := a%:R * PI + b%:R * sqrt (c%:R) in
    area =
      (* Area of a cross-section through two points A,B on a top rim
         subtending 120 degrees and the center line (vertical diameter) *)
      (* area = a·π + b·sqrt(c), 
         for a, b, c as described *)
      (* This is unique for these cylinder parameters *)
      surface_area_of_cut_face r h theta /\
    (a + b + c = 53).
Proof. Admitted.
####