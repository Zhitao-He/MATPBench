####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 18;
  AC_length : dist A C = 9;
  BC_perp_AC : perpendicular (line B C) (line A C);
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := dist B C.

Theorem x_value : x = 9 * sqrt 3.
Proof. by []. Qed.

End RightTriangleProblem.
####