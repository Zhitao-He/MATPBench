####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Record point := Point { px : R; py : R }.
Definition area_quadrilateral (A B C D : point) :=
  ((px A * py B - px B * py A)
   + (px B * py C - px C * py B)
   + (px C * py D - px D * py C)
   + (px D * py A - px A * py D)) / 2.

Theorem area_BCAD_84 :
  exists A B C D : point,
    (* BC || AD *)
    Point.px B - Point.px C = Point.px A - Point.px D /\
    Point.py B - Point.py C = Point.py A - Point.py D /\
    area_quadrilateral B C A D = 84.
Proof.
  (* proof omitted *)
Admitted.
####