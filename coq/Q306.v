####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.

Variable R : realType.
Implicit Types A B C P Q : 'rP[R]_2.

Theorem angle_PQC_solution :
  forall A B C P Q : 'rP[R]_2,
  similar_triangle A B C P A Q ->
  similar_triangle A B Q Q C P ->
  angle B A C = radian (70 * PI / 180) ->
  angle P Q C = radian (15 * PI / 180).
Proof. Admitted.

End AngleProblem.
####