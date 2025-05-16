####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_y_value :
  forall (A B C : R^2) (x y : R),
    (* Triangle ABC, with right angle at C *)
    [/\ 
      let BA := A - B in
      let BC := C - B in
      let CA := A - C in
      ((norm (A - B) = 10) /\
       (norm (B - C) = x) /\
       (norm (A - C) = y) /\
       (* angle ABC = 60 degrees *)
       (\cos_angle (A - B) (C - B) = cos (PI / 3)) /\
       (* angle BCA = 90 degrees, right angle at C *)
       ((\cos_angle (B - C) (A - C)) = 0)
      )
    ] ->
    y = 5 * Num.sqrt 3.
Proof. Admitted.
####