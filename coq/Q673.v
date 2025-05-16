####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_value_of_x :
  forall (B C F : R * R),
    (* CBF is a triangle with right angle at C *)
    let x := sqrt ((fst F - fst C)^+2 + (snd F - snd C)^+2) in
    let BC := sqrt ((fst B - fst C)^+2 + (snd B - snd C)^+2) in
    let BF := sqrt ((fst F - fst B)^+2 + (snd F - snd B)^+2) in
    (* Given lengths from the diagram *)
    BC = 8 ->
    BF = 15 ->
    (* Angle BCF is right angle, i.e., CB perpendicular to CF *)
    (fst B = fst C) /\ (snd F = snd C) ->
    Value x = sqrt 161.
Proof. Admitted.
####