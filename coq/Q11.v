####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem conical_paper_cap_perimeter :
  let r := 6%:R in
  let theta := (120%:R * pi) / 180%:R in
  let arc_length := r * theta in
  (* The arc length becomes the circumference of the cone's base after rolling *)
  arc_length = 4 * PI[R].
Proof. Admitted.
####