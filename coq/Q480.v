####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo realalg.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { px : R ; py : R }.

Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^2 + (py A - py B)^2).

Definition angle (A O B : point) : R :=
  let u := (px A - px O, py A - py O) in
  let v := (px B - px O, py B - py O) in
  let dot := (fst u * fst v + snd u * snd v) in
  let nu := sqrt (fst u ^ 2 + snd u ^ 2) in
  let nv := sqrt (fst v ^ 2 + snd v ^ 2) in
  acos (dot / (nu * nv)).

Theorem angle_STR_value :
  exists S R T : point,
    (* Right angle at S *)
    angle R S T = /2 * PI /\
    (* side lengths: SR = 7*sqrt 2, ST = 3*sqrt 2 *)
    dist S R = 7 * sqrt 2 /\
    dist S T = 3 * sqrt 2 /\

####