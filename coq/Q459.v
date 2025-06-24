####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Coordinates of rectangle ABCD: A(0,0), B(b,0), C(b,h), D(0,h) *)
Variable b h : R.
Hypothesis hb : 0 < b.
Hypothesis hh : 0 < h.

(* Points M and N on AB and BC *)
Variable m n : R.
Hypothesis hm : 0 < m < b.
Hypothesis hn : 0 < n < h.

(* Given: triangle areas as in diagram *)
Definition S1 := m * n / 2.
Definition S2 := (b - m) * n / 2.
Definition S3 := (b - m) * (h - n) / 2.
Definition S4 := m * (h - n) / 2.

(* Total area of the rectangle *)
Definition total_area := b * h.

(* Area of central quadrilateral (shaded region) *)
Definition shaded_area := total_area - (S1 + S2 + S3 + S4).

Theorem shaded_area_result :
  m = 5 -> n = 4 -> b = 10 -> h = 8 ->
  shaded_area = 25.
Proof.
move=> Hm Hn Hb Hh.
rewrite /shaded_area /total_area /S1 /S2 /S3 /S4.
rewrite Hm Hn Hb Hh.
field.
Qed.
####