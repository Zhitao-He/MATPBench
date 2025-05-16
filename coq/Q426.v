####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_triangle_cosine_value :
  forall (A B C : R^2),
    (* Diagram and text together indicate: ABC is a (right) triangle with right angle at A *)
    (* Hence, angle BAC = 90 degrees *)
    let a := norm (C - B) in
    let b := norm (A - C) in
    let c := norm (A - B) in
    [/\ 
      (* A, B, C are non-collinear and form a triangle *)
      & a > 0
      & b > 0
      & c > 0
      (* angle at A is a right angle *)
      & '[C - A, B - A] = 0
      (* and cos(angle ABC) = 3/5 *)
      & cos_angle B A C = 3/5
    ] ->
    cos_angle C A B = 4/5.
Proof. Admitted.
####