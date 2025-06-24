####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables A B C D E F G : 'Point[R]_2.

Hypotheses
  angle_ADG : angle_deg (A,D,G) = 36;
  angle_AGF : angle_deg (A,G,F) = 104;
  angle_EFC : angle_deg (E,F,C) = 40;
  AB_perp_CB : perpendicular (line A B) (line C B);
  collinear_ADG : collinear [:: A; D; G];
  collinear_AGF : collinear [:: A; G; F];
  collinear_EFC : collinear [:: E; F; C];
  collinear_BCF : collinear [:: B; C; F].

Definition angle_BCF := angle_deg (B,C,F).

Theorem angle_BCF_14 : angle_BCF = 14.
Proof. by []. Qed.

End AngleProblem.
####