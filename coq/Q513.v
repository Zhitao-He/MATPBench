####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleHeightProblem.

Variable R : realType.

Variables A B C X : 'rV[R]_2.

Hypothesis AC_length : `|A - C| = 14.
Hypothesis AB_length : `|A - B| = 8.
Hypothesis BC_length : `|B - C| = 8.

(* X is the foot of the altitude from B to AC *)
Hypothesis X_on_AC : exists t : R, 0 <= t <= 1 /\ X = (1 - t) *: A + t *: C.
Hypothesis X_right_angle : [< (B - X) `dot` (C - A) = 0 >].

Theorem triangle_height_value :
  `|B - X| = sqrt 15.
Proof. Admitted.

End TriangleHeightProblem.
####