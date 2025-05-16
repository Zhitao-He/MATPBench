####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C : 'rV[R]_2.

Variables x : R.

Hypothesis HAB_pos : 0 < (2 * x + 5).
Hypothesis HBC_pos : 0 < (3 * x - 4).
Hypothesis HAC_pos : 0 < 27.

Definition dist (P Q : 'rV[R]_2) := sqrt ((P - Q) *m (P - Q)^T 0 0).

Hypothesis HAB : dist A B = 2*x + 5.
Hypothesis HBC : dist B C = 3*x - 4.
Hypothesis HAC : dist A C = 27.

Theorem isosceles_triangle_BCA :
  (2*x + 5 = 3*x - 4) \/ (2*x + 5 = 27) \/ (3*x - 4 = 27).
Proof. Admitted.
####