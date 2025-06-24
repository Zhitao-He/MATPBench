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
  BA_length : dist B A = 32;
  angle_BAC : angle_deg (B,A,C) = 60;
  AC_perp_BC : perpendicular (line A C) (line B C).

Definition y := dist C A.

Theorem y_value : y = 16.
Proof. by []. Qed.

End RightTriangleProblem.
####