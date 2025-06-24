####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.

Hypotheses
  angle_CBA : angle_deg (C,B,A) = 17;
  angle_DCA : angle_deg (D,C,A) = 29;
  AD_perp_CD : perpendicular (line A D) (line C D);
  collinear_ADC : collinear [:: A; D; C];
  collinear_ABC : collinear [:: A; B; C].

Definition angle_BAC := angle_deg (B,A,C).

Theorem angle_BAC_12 : angle_BAC = 12.
Proof. by []. Qed.

End AngleProblem.
####