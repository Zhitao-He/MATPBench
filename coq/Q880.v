####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesTriangleProblem.
Variable R : realType.
Variables A B C D : 'Point[R]_2.

Hypotheses
  AC_eq_CB : dist A C = dist C B;
  AD_eq_DC : dist A D = dist D C;
  angle_ADC : angle_deg (A,D,C) = 92;
  collinear_ADC : collinear [:: A; D; C];
  collinear_ACB : collinear [:: A; C; B].

Definition angle_DCA := angle_deg (D,C,A).

Theorem angle_DCA_44 : angle_DCA = 44.
Proof. by []. Qed.

End IsoscelesTriangleProblem.
####