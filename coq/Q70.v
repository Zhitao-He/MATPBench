####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem grey_squares_wall_area :
  let wall_side := 16%:R in
  exists (s : R),
    0 < s /\
    (* s is the side length of each small grey square *)
    let A_small := s ^+ 2 in
    let A_large := (wall_side - 2 * (s / sqrt 2)) ^+ 2 in
    (* Each small square is at a 45-degree angle with the wall,
       so its projection onto one side is s / sqrt 2;
       the large square fits exactly between them. *)
    let B := 2 * A_small + A_large in
    B = 128%:R.
Proof. Admitted.
####