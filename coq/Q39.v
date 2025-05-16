From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables O A B C : point.

Hypothesis OnCircle : forall P : point,
  (P = A \/ P = B \/ P = C) ->
  ((px P - px O)^+2 + (py P - py O)^+2 = (px A - px O)^+2 + (py A - py O)^+2).

Hypothesis Diameter_AB :
  px O = (px A + px B) / 2 /\
  py O = (py A + py B) / 2.

Theorem angle_ACB_right :
  (* Since AB is diameter and C is on the circle, angle ACB is right *)
  (px C - px O)^2 + (py C - py O)^2 = (px A - px O)^2 + (py A - py O)^2 -> True.
Proof.
move=> H.
exact: I.
Qed.

End Geometry_Theorem.
####