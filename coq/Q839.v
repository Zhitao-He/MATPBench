####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length :
  forall (A B C : R * R),
    (* Given: A, B, C are points in the plane *)
    let AB := sqrt ((fst A - fst B)^+2 + (snd A - snd B)^+2) in
    let AC := sqrt ((fst A - fst C)^+2 + (snd A - snd C)^+2) in
    let BC := sqrt ((fst B - fst C)^+2 + (snd B - snd C)^+2) in
    (* Given: Triangle ABC is right at A, AB = 48, AC = 20, BC = x *)
    (* Right angle at A: vectors AB and AC are perpendicular *)
    (AB = 48%:R) ->
    (AC = 20%:R) ->
    ( (fst B - fst A)*(fst C - fst A) + (snd B - snd A)*(snd C - snd A) = 0 ) ->
    BC = 52%:R.
Proof. Admitted.
####