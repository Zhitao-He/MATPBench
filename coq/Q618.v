####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_tan_angle_ABC :
  forall (A B C : R^2),
    (* Triangle ABC with C at right angle *)
    [/\ 
      (* Right angle at C *)
      angle A C B = PI/2,
      (* Side lengths: a = BC, b = CA, c = AB *)
      let a := norm (B - C) in
      let b := norm (A - C) in
      let c := norm (A - B) in
      (* Tangent of angle ABC *)
      tan (angle A B C) = (24%:R / 7%:R)
    ].
Proof. Admitted.
####