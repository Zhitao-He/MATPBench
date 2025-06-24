####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleOBCArea.

Variable R : realType.

Variables A B C O : 'rV[R]_2.

Hypothesis eq_AB : dist A B = 5.
Hypothesis eq_AC : dist A C = 5.
Hypothesis eq_BC : dist B C = 6.

Hypothesis O_is_circumcenter :
  forall P : 'rV[R]_2, dist O P = dist O A <-> P = A \/ P = B \/ P = C.

Definition area (P Q R : 'rV[R]_2) :=
  ((Q.1 * R.2 - Q.2 * R.1) - (P.1 * Q.2 - P.2 * Q.1) + (P.1 * R.2 - P.2 * R.1)) / 2.

Theorem triangle_OBC_area :
  area O B C = 21/8.
Proof. Admitted.

End TriangleOBCArea.
####