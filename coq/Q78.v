####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem flag_rectangle_ratio :
  exists (lambda : R),
    0 < lambda < 1 /\
    (forall (L W : R),
        0 < L -> 0 < W ->
        let flag := (L, W) in
        (* The flag is a rectangle of dimensions L x W, divided as shown:        *
         * Two vertical lines divide the flag into three vertical strips:        *
         * left, center, right. The left and right strips are congruent;         *
         * The center is further divided horizontally by two lines,              *
         * producing three congruent horizontal rectangles, all congruent        *
         * to the left/right vertical strips.                                    *)
        let small_w := lambda in
        let small_h := 1 in
        (* The small rectangle's side ratio is small_w : small_h *)
        exists (a b : R),
          0 < a -> 0 < b ->
          lambda = a / b /\
          (* The entire flag is partitioned into five congruent rectangles,      *
           * each of dimensions a x b.                                          *
           * The flag therefore must have dimensions:                            *
           *   width = 3a
####