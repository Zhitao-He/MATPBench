####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem triangle_diagram_value_x :
  forall (A B C : R * R),
    let AB := sqrt ((fst B - fst A)^+2 + (snd B - snd A)^+2) in
    let AC := sqrt ((fst C - fst A)^+2 + (snd C - snd A)^+2) in
    let BC := sqrt ((fst C - fst B)^+2 + (snd C - snd B)^+2) in
    AB = 2 * sqrt 3 ->
    let dotABAC := (fst B - fst A)*(fst C - fst A) + (snd B - snd A)*(snd C - snd A) in
    dotABAC / (AB * AC) = cos (PI/6) ->
    BC = 4.
Proof. by []. Qed.
####