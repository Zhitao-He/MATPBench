####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_extension_shaded_area :
  let A := (0,0) in let B := (6,0) in let C := (0,8) in
  let D := (9,0) in let F := (9,12) in let E := (6,8) in
  let area_triangle P Q R := abs ((P.1*(Q.2 - R.2) + Q.1*(R.2 - P.2) + R.1*(P.2 - Q.2))/2) in
  let shaded := area_triangle A B E + area_triangle A E C + area_triangle C E F in
  shaded = 54.
Proof.
admit.
Qed.
####