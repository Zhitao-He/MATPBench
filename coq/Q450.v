####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Definition of the big circle (the room) with center O and radius 10 *)
Definition O : 'rV[R]_2 := 0.
Definition room_radius : R := 10.

(* Definition of the pillar: centered at O with radius 5 *)
Definition pillar_radius : R := 5.

(* Alice is at point A on the circumference of the room *)
Definition A : 'rV[R]_2 := row2 0 (- room_radius).

(* The area in the room Alice can see, i.e., the visible area from point A, not including the pillar *)
(* The final answer is of the form (m * PI) / n + p * sqrt q *)

Theorem putnam_2019_a1_visible_area :
  let visible_area :=
    (80 * PI) / 3 + 50 * sqrt 3 in
  80 + 3 + 50 + 3 = 136.
Proof. Admitted.
####