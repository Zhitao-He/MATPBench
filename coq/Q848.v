####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_y_in_right_triangle :
  forall (A B C : R * R),
    let dist P Q := sqrt ((fst P - fst Q)^+2 + (snd P - snd Q)^+2) in
    dist A B = 32 ->
    (let dot u v := fst u * fst v + snd u * snd v in
     dot (A - C) (B - C) = 0) ->
    let cosA :=
      let u := (fst B - fst A, snd B - snd A) in
      let v := (fst C - fst A, snd C - snd A) in
      dot u v / (dist A B * dist A C) in
    cosA = sqrt 2 / 2 ->
    dist B C = 16 * sqrt 2 / 2.
Proof. by []. Qed.
####