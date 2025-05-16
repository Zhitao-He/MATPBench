####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem value_x_is_2_sqrt_78 :
  forall (A B C : R * R) (x : R),
    let dAB := ((fst B - fst A)^+2 + (snd B - snd A)^+2)%R in
    let dAC := ((fst C - fst A)^+2 + (snd C - snd A)^+2)%R in
    let dBC := ((fst C - fst B)^+2 + (snd C - snd B)^+2)%R in
    (* A at (0,0), B at (0,7), C at (x,0), right angle at A *)
    A = (0,0) ->
    B = (0,7) ->
    C = (x,0) ->
    dAB = 7^2 ->
    dBC = 19^2 ->
    dAC = x^2 ->
    x = 2 * sqrt 78.
Proof. Admitted.
####