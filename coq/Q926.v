####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleAngleProblem.
Variable R : realType.
Variables A B C : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 6;
  AC_length : dist A C = 6 * sqrt 2;
  BC_length : dist B C = 6;
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := angle_deg (B,C,A).

Theorem x_value_45 : x = 45.
Proof. by []. Qed.

End TriangleAngleProblem.
####