####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition line1 p := p.2 = -2 * p.1 + 8.
Definition line2 p := p.2 = p.1 / 2 - 2.
Definition line3 p := p.1 = -2.

Definition inter12 := (4, 0).
Definition inter13 := (-2, 5 - (-2)*(-2)).
Definition inter23 := (-2, (-2)/2 - 2).

Definition area_triangle A B C := abs ((A.1*(B.2 - C.2) + B.1*(C.2 - A.2) + C.1*(A.2 - B.2))/2).

Theorem area_of_triangle_lines_example :
  area_triangle inter12 inter13 inter23 = 6.
Proof.
admit.
Qed.
####