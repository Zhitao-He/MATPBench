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
  angle_ABC : angle_deg (A,B,C) = 25;
  CA_perp_BA : perpendicular (line C A) (line B A);
  noncollinear_ABC : ~ collinear [:: A; B; C].

Definition x := dist A C.

Theorem x_value : x = 18 * tan (25%:R * pi / 180).
Proof. by []. Qed.

End RightTriangleProblem.
####