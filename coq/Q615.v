####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem isosceles_triangle_RST_relation :
  forall (x : R),
    let SR := 3 * x - 5 in
    let RT := 2 * x + 7 in
    let ST := 22 in
    (SR = RT) -> (* Isosceles triangle: SR = RT *)
    True.
Proof. Admitted.
####