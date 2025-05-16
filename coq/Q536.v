####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem angle_problem_value_of_y :
  forall (y x : R),
    (* Angles at the labeled vertices according to the diagram: *)
    let angle_C : R := 78 in
    let angle_E : R := 2 * y in
    let angle_D : R := 110 in
    let angle_F : R := x + 36 in
    (* The sum of the angles around the closed quad C-E-D-F *)
      angle_C + angle_E + angle_D + angle_F = 360 ->
      (* The claimed value of y *)
      y = 35.
Proof. Admitted.
####