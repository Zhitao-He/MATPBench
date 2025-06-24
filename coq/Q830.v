####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RhombusAngle.
Variable R : realType.
Variables A B C D P : 'Point[R]_2.

Hypotheses
  rhombus_ADCB : (dist A D = dist D C) /\ (dist D C = dist C B) /\ (dist C B = dist B A);
  AB_length : dist A B = 15;
  PB_length : dist P B = 12;
  angle_DBA : angle_deg (D,B,A) = 24;
  P_on_AC : collinear [:: A; P; C];
  BP_perp_AC : perpendicular (line B P) (line A C).

Definition angle_ACB := angle_deg (A,C,B).

Theorem angle_ACB_value : angle_ACB = 66.
Proof. by []. Qed.

End RhombusAngle.
####