####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Definition of the points:
   Let A, B, C, D form the square base in the plane z=0,
   and A', B', C', D' be the upper vertices.

   Let us set:
   A = (0,0,0)
   B = (s,0,0)
   C = (s,s,0)
   D = (0,s,0)
   D' = (0,0,h)
   C' = (s,0,h)
   B' = (s + s, s, h)
   A' = (s, s, h)
   The upper edges are assigned so that A'B' = 2s
   All edges except the long parallel edge have length s.

   The vertices are determined uniquely by the edge constraints and parallelism.
*)

Theorem solid_volume_288
  (s : R)
  (hs : s = 6 * sqrt 2)
  :
  let base := [:: (0,0,0); (s,0,0); (s,s,0); (0,s,0)] in
  let h := sqrt (s^2 - (s^2 / 
####