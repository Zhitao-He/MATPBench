####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleCBD.

Variable Point : Type.

Variables A B C D : Point.

Variable collinear : Point -> Point -> Point -> Prop.
Variable ncollinear : Point -> Point -> Point -> Prop.
Variable eq_point : Point -> Point -> Prop.

Variable angle : Point -> Point -> Point -> R. (* angle ABC is angle(A,B,C) *)

Hypotheses
  (Hncollinear_ABC : ncollinear A B C)
  (Hncollinear_DBC : ncollinear D B C)
  (Hcollinear_ABD : collinear A B D)
  (Hdistinct_AB : ~ eq_point A B)
  (Hdistinct_DB : ~ eq_point D B)
  (Hbet_ABD : angle A B D = 0)
  (Hangle_ABC_110 : angle A B C = 110).

Theorem measure_angle_CBD :
  angle C B D = 70.
Proof. Admitted.
####