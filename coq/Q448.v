####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_parallelogram_edge_ratio
  (b l : R)
  (Hb : 0 < b)
  (Hl : 0 < l) :
  (* There are 8 congruent isosceles triangles (base b, leg l), arranged into a parallelogram as shown,*
     * and the total length of all drawn segments (without double counting overlaps) is exactly three times the perimeter of the parallelogram *)
  (let T := 4 in
   let total_segments := 3 * (2 * (T * b) + 2 * l) in
   let unique_segments :=
        ((2 * T) * b) (* lower sides of triangles *)
      + ((2 * T) * l) (* legs on both sides *)
      + (2 * l)   (* parallelogram left/right sides *)
      + ((T + 1) * b) (* parallelogram top/base *)
        - (T * b) (* overlapping base segments counted twice: subtract extra count *)
       in
   unique_segments = total_segments) ->
  l / b = sqrt 2.
Proof. Admitted.
####