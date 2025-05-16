####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryDiagram.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypothesis collinear_CEG : colinear C E G.
Hypothesis collinear_CEG_order : between C E G.
Hypothesis collinear_CEGB : colinear C G B.
Hypothesis angle_CAE_25 : angle E A C = 25%:R.
Hypothesis angle_EAG_51 : angle G A E = 51%:R.
Hypothesis angle_BAG_28 : angle G A B = 28%:R.
Hypothesis angle_BAC_35 : angle C A B = 35%:R.
Hypothesis right_angle_ABD : right_angle A B D.
Hypothesis D_between_A_B : between A D B.
Hypothesis F_connected : ~ colinear B D F.

Theorem measure_angle_BAG_62 :
  angle B A G = 62%:R.
Proof. Admitted.

End GeometryDiagram.
####