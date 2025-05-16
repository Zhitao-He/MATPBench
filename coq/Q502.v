####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_angle_cosine_value :
  let R_pt := (R : R * R) in
  let S_pt := (R : R * R) in
  let T_pt := (R : R * R) in
  forall (R S T : R * R),
    (* given triangle RST with |RS| = 5, |ST| = 3, |TR| = 6 *)
    (sqrt ((fst R - fst S)^+2 + (snd R - snd S)^+2) = 5) ->
    (sqrt ((fst S - fst T)^+2 + (snd S - snd T)^+2) = 3) ->
    (sqrt ((fst T - fst R)^+2 + (snd T - snd R)^+2) = 6) ->
    let x := acos (((fst S - fst R) * (fst T - fst R) + (snd S - snd R) * (snd T - snd R)) /
                  (sqrt ((fst S - fst R)^+2 + (snd S - snd R)^+2) * sqrt ((fst T - fst R)^+2 + (snd T - snd
####