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
  AC_length : dist A C = 16;
  CB_length : dist C B = 30;
  BC_perp_AC : perpendicular (line B C) (line A C);
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := dist A B.

Theorem x_value_34 : x = 34.
Proof. by []. Qed.

End RightTriangleProblem.
####