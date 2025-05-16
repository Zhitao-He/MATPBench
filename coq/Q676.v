####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section MeasureOfAngle_BEA_Theorem.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis BE_col : colinear B E D.
Hypothesis AE_col : colinear A E C.

Hypothesis DB_eq : [angle D B E] = 75%:R.
Hypothesis BDC_eq : [angle B D E] = 35%:R.
Hypothesis CAE_eq : [angle C A E] = 28%:R.

Theorem measure_of_angle_BEA :
  [angle B E A] = 110%:R.
Proof. Admitted.

End MeasureOfAngle_BEA_Theorem.
####