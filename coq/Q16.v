####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals real_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rhombus_Midpoints.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (P Q : point) : R := sqrt ((px P - px Q)^2 + (py P - py Q)^2).

Variables A B C D E F : point.

Hypothesis rhombus_ABCD :
  dist A B = dist B C /\ dist B C = dist C D /\ dist C D = dist D A /\
  let vAB := (px B - px A, py B - py A) in
  let vCD := (px D - px C, py D - py C) in
  let vAD := (px D - px A, py D - py A) in
  let vBC := (px C - px B, py C - py B) in
    vAB.1 = - vCD.1 /\ vAB.2 = - vCD.2 /\ vAD.1 = - vBC.1 /\ vAD.2 = - vBC.2.

Theorem midpoint_diagonals :
  let mid_AC := Point ((px A + px C)/2) ((py A + py C)/2) in
  let mid_BD := Point ((px B + px D)/2) ((py B + py D)/2) in
  mid_AC = mid_BD.
Proof.
Admitted.

End Rhombus_Midpoints.
####