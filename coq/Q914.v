####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section QuadrilateralPerimeter.
Variable R : realType.
Variables A B C N : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 3;
  AB_eq_CN : dist A B = dist C N;
  AC_eq_BN : dist A C = dist B N;
  angle_ANB : angle_deg (A,N,B) = 62;
  AC_perp_NC : perpendicular (line A C) (line N C);
  NB_perp_AB : perpendicular (line N B) (line A B);
  noncollinear_ACN : ~ collinear [:: A; C; N];
  noncollinear_ANB : ~ collinear [:: A; N; B].

Definition perimeter := dist A C + dist C N + dist N B + dist B A.

Theorem perimeter_value : perimeter = 6 * tan (7%:R * pi / 45) + 6.
Proof. by []. Qed.

End QuadrilateralPerimeter.
####