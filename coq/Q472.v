####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem marble_in_cone_depth :
  let r := 15%:R in
  let depth := 45%:R in
  (* Let the cone have its axis vertical, vertex at the origin O (0,0,0),
     opening upwards, with side view an equilateral triangle of height h = depth.
     The sphere of radius r is tangent to all three cone faces and to the base. *)
  exists h : R,
    0 < h /\
    (* The marble of radius r fits perfectly in a cone with equilateral triangle cross section of height h *)
    h = depth.
Proof. Admitted.
####