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
  AB_length : dist A B = 15;
  AC_length : dist A C = 9;
  BC_length : dist B C = 12;
  BC_perp_AC : perpendicular (line B C) (line A C);
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition perimeter := dist A B + dist B C + dist C A.

Theorem perimeter_36 : perimeter = 36.
Proof. by []. Qed.

End RightTriangleProblem.
####