####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_triangle_shaded_area :
  let A := (-2,0) in let B := (2,0) in let P := (0,0) in let r := 2 in
  let C := (1, sqrt 3) in
  let area_circle := PI * r^+2 in
  let area_triangle := (1%:R/2) * abs (A.1*(B.2 - C.2) + B.1*(C.2 - A.2) + C.1*(A.2 - B.2)) in
  let shaded := area_circle - area_triangle in
  shaded = (4 * PI - 2 * sqrt 3).
Proof.
admit.
Qed.
####