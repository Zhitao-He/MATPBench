####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Projection_Triangle.

Variable R : realType.

Variables d1 d2 L pL : R.

Hypothesis h_ratio_distances : d1 / d2 = 20 / 50.
Hypothesis h_side_length_triangle : L = 8.
Hypothesis h_similarity_ratio : d1 / d2 = L / pL.

Theorem projection_triangle_side_length : pL = 20%:R.
Proof. Admitted.

End Projection_Triangle.
####