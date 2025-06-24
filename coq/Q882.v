####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleSideProblem.
Variable R : realType.
Variables A B C : 'Point[R]_2.

Hypotheses
  AC_length : dist A C = 5;
  BA_length : dist B A = 12;
  angle_BAC : angle_deg (B,A,C) = 60;
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := dist C B.

Theorem x_value : x = sqrt 109.
Proof. by []. Qed.

End TriangleSideProblem.
####