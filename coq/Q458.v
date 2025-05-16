####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import ssrnum ssrint.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let the parallelepiped have vertices as follows: 
   X = (a,b,c), 
   Y = (a,b,0), 
   Z = (0,b,c), 
   A = (a,0,0).
   The triangle XYZ has side lengths:
   |XZ| = sqrt(55), |XY| = 8, |YZ| = 9.
   The goal is to compute |XA| = 10.
*)

Theorem parallelepiped_diagonal_length :
  exists (a b c : R),
    0 < a /\ 0 < b /\ 0 < c /\
    ((let X := (a, b, c) in
      let Y := (a, b, 0) in
      let Z := (0, b, c) in
      let A := (a, 0, 0) in
      let dist3 u v := Num.sqrt ((u.1 - v.1)^+2 + (u.2 - v.2)^+2 + (u.3 - v.3)^+2) in
      dist3 X Z = Num.sqrt 
####