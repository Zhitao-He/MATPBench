####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangular_prism_surface_area :
  let base_length := 12%:R in
  let triangle_height := 8%:R in
  let triangle_side := 10%:R in
  let prism_length := 21%:R in
  let triangle_area := (1%:R / 2%:R) * base_length * triangle_height in
  let lateral_face1 := base_length * prism_length in
  let lateral_face2 := triangle_side * prism_length in
  let lateral_face3 := triangle_side * prism_length in
  let surface_area := 2%:R * triangle_area + lateral_face1 + lateral_face2 + lateral_face3 in
  surface_area = 768%:R.
Proof. Admitted.
####