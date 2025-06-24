####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables A B C D E F : 'Point[R]_2.

Hypotheses
  angle_EDF : angle_deg (E,D,F) = 39;
  angle_FBA : angle_deg (F,B,A) = 48;
  FC_parallel_ED : parallel (line F C) (line E D);
  AF_perp_BF : perpendicular (line A F) (line B F);
  DC_perp_FC : perpendicular (line D C) (line F C);
  FE_perp_DE : perpendicular (line F E) (line D E);
  collinear_FED : collinear [:: F; E; D];
  collinear_FCD : collinear [:: F; C; D].

Definition angle_FDC := angle_deg (F,D,C).

Theorem angle_FDC_51 : angle_FDC = 51.
Proof. by []. Qed.

End AngleProblem.
####