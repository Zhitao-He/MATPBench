####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem isosceles_triangle_A_y_coordinate :
  let B := (0 : R, 0 : R) in
  let C := (20 : R, 0 : R) in
  forall a_x a_y : R,
    let A := (a_x, a_y) in
    (* triangle ABC is isosceles with AB = AC *)
    `|a_x| ^+ 2 + `|a_y| ^+ 2 = `|a_x - 20| ^+ 2 + `|a_y| ^+ 2 ->
    (* triangle area is 240 *)
    (1%:R / 2) * `| (0 * (a_y - 0)) + (a_x * (0 - 0)) + (20 * (0 - a_y)) | = 240%:R ->
    a_y = 24%:R.
Proof. Admitted.
####