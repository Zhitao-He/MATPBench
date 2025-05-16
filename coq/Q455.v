####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point2D := mkPoint { px : R; py : R }.

Definition area_square (A B C D : point2D) : R :=
  Num.sqrt ((px B - px A)^+2 + (py B - py A)^+2)^2.

Definition square_congruent (A B C D E F G H : point2D) : Prop :=
  let s1 := area_square A B C D in
  let s2 := area_square E F G H in
  s1 = s2 /\
  (* all sides equal and all angles 90 degrees for each square *)
  [/\ 
    ((px B - px A)^+2 + (py B - py A)^+2 =
     (px C - px B)^+2 + (py C - py B)^+2) /\
    ((px C - px B)^+2 + (py C - py B)^+2 =
     (px D - px C)^+2 + (py D - py C)^+2) /\
    ((px D - px C)^+2 + (py D - py C)^+2 =
     (px A - px D)^
####