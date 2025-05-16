####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo rat.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ChordSinTheorem.

Variable R : realType.

(* Let O be the center of the circle, and circle has radius 5 *)
Variables (O A B C D : R^2).
Hypothesis Hdistinct : uniq [:: O; A; B; C; D].

Hypothesis Hcircle :
  dist O A = 5 /\
  dist O B = 5 /\
  dist O C = 5 /\
  dist O D = 5 /\
  ~ colinear A B C.  (* ensure points on the circle are distinct and not colinear *)

(* B is on the minor arc AD (that does not contain C) *)
(* BC is a chord; it bisects AD *)
Hypothesis HBC_bisects_AD :
  let M := (A + D) / 2 in
  exists t : R, 0 < t < 1 /\
    B = A + t * (D - A) /\
    (exists s : R, 0 < s < 1 /\
      C = B + s * (M - B)).

Hypothesis HBC_length : dist B C = 6.

(* AD is the only chord from A bisected by BC *)
Hypothesis H
####