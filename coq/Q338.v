####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals Rstruct.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition square (A B C D : point) : Prop :=
  [/\ 
    (* All sides equal and consecutive, all angles right-angles *)
    (A <> B) /\ (B <> C) /\ (C <> D) /\ (D <> A) /\
    ((px B - px A)^2 + (py B - py A)^2 = (px C - px B)^2 + (py C - py B)^2) /\
    ((px B - px A)^2 + (py B - py A)^2 = (px D - px C)^2 + (py D - py C)^2) /\
    ((px B - px A)^2 + (py B - py A)^2 = (px A - px D)^2 + (py A - py D)^2) /\
    (* Consecutive sides perpendicular *)
    ((px B - px A)*(px C - px B) + (py B - py A)*(py C - py B) = 0) /\
    ((px C - px B)*(px D - px C) + (py C -
####