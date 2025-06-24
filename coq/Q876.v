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
  AC_length : dist A C = 12;
  BA_length : dist B A = 13;
  BC_length : dist B C = 15;
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition angle_ACB := angle_deg (A,C,B).

Theorem angle_ACB_value : angle_ACB = 180 * acos (5 / 9) / pi.
Proof. by []. Qed.

End TriangleAngleProblem.
####