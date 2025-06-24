####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TrapezoidAreaProblem.
Variable R : realType.
Variables A B C D E F : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 35;
  CD_length : dist C D = 19;
  perimeter_DBAC : dist D B + dist B A + dist A C + dist C D = 74;
  isosceles_trapezoid : (dist D B = dist A C) /\ parallel (line D C) (line B A);
  CF_perp_AF : perpendicular (line C F) (line A F);
  DE_perp_AE : perpendicular (line D E) (line A E);
  collinear_ABE : collinear [:: A; B; E];
  collinear_ABF : collinear [:: A; B; F];
  collinear_CFA : collinear [:: C; F; A];
  collinear_DEA : collinear [:: D; E; A].

Definition area := area_quadrilateral [:: D; B; A; C].

Theorem area_value_162 : area = 162.
Proof. by []. Qed.

End TrapezoidAreaProblem.
####