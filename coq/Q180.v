####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem shaded_figure_area :
  let rect_length := 20%:R in
  let rect_width := 15%:R in
  let tri_base := 8%:R in
  let tri_height := 15%:R in
  let rect_area := rect_length * rect_width in
  let tri_area := (tri_base * tri_height) / 2 in
  let total_area := rect_area + tri_area in
  round (total_area * 10) / 10 = 420%:R.
Proof. Admitted.
####