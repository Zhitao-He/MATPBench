####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C : 'Point[R]_2.

Hypotheses
  BA_length : dist B A = 18;
  angle_BAC : angle_deg (B,A,C) = 45;
  AC_perp_BC : perpendicular (line A C) (line B C).

Definition x := dist B C.

Theorem x_value : x = 9 * sqrt 2.
Proof. by []. Qed.

End RightTriangleProblem.
####