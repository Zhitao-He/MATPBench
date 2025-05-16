####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B C D J : R^2.

(* Parallelogram property *)
Hypothesis Hparallelogram : (D - A) = (B - C).

(* Intersection point J of diagonals AC and BD *)
Hypothesis HJ_diag : exists l m : R, 0 < l < 1 /\ 0 < m < 1 /\
  J = (1 - l) *: A + l *: C /\ J = (1 - m) *: B + m *: D.

(* Segment lengths as per diagram labels *)
Variables x y : R.
Hypothesis H12 : 2 * x + 3 = norm (J - A).
Hypothesis H34 : 8 * y - 36 = norm (J - C).
Hypothesis H23 : 5 * x = norm (J - B).
Hypothesis H41 : 4 * y = norm (J - D).

Theorem value_of_y :
  y = 9.
Proof. Admitted.
####