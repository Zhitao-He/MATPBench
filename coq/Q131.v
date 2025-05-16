####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_triangle_area_BE :
  let A := (0 : R, 0 : R) in
  let B := (0 : R, 10 : R) in
  let C := (10 : R, 10 : R) in
  let D := (10 : R, 0 : R) in
  (forall E : R * R,
      (exists t : R, 0 <= t <= 10 /\ E = (t, 10)) /\
      (\det_2 (B - A) (E - A))./2 = 40 /\
      sqrt (((fst E - fst B)^+2) + ((snd E - snd B)^+2)) = 8 ->
      E = (8,10)
  ).
Proof. Admitted.
####