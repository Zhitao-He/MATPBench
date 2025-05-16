####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_side_length_60_30
  (A B C : R^2)
  (Hneq : A != B /\ B != C /\ C != A)
  (HangleA : 
     let a := norm (B - C) in
     let b := norm (A - C) in
     let c := norm (A - B) in
     0 < a /\ 0 < b /\ 0 < c /\
     [/\ 
        (\angle_ABC A B C = PI/3) /\
        (\angle_ABC C A B = PI/6) /\
        b = 5 ])
  :
  let x := norm (B - C) in
  x = 5 * sqrt 3 / 3.
Proof. Admitted.
####