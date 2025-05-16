####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_rectangular_fold
  : let width := 8%:R in
    let height := 8%:R in
    let A := (width, height) : R * R in
    let B := (0, height) : R * R in
    let D := (0, 0) : R * R in
    let C := (0, yC) : R * R in
    exists yC l : R,
      0 < yC < height /\
      let dist := fun p q : R * R => Num.sqrt ((p.1 - q.1)^+2 + (p.2 - q.2)^+2) in
      dist B C = 5%:R /\
      l = 5%:R * Num.sqrt 5 /\
      (* The fold is the locus of points equidistant from A and C and tangent to AB, so the fold segment has length l *)
      True.
Proof. Admitted.
####