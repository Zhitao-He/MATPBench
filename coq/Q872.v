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
  angle_ACE : angle_deg (A,C,E) = 25;
  angle_AEG : angle_deg (A,E,G) = 51;
  angle_DAB : angle_deg (D,A,B) = 35;
  angle_GBA : angle_deg (G,B,A) = 28;
  AB_perp_FB : perpendicular (line A B) (line F B);
  AG_perp_BG : perpendicular (line A G) (line B G);
  BD_perp_FD : perpendicular (line B D) (line F D);
  collinear_ABD : collinear [:: A; B; D];
  collinear_ABF : collinear [:: A; B; F];
  collinear_AEG : collinear [:: A; E; G].

Definition angle_BAG := angle_deg (B,A,G).

Theorem angle_BAG_62 : angle_BAG = 62.
Proof. by []. Qed.

End AngleProblem.
####