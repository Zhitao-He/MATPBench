####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rectangle_Angle_DEB.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis rect : is_rectangle A B C D.
Hypothesis nb_col_AB : ~~ colinear A B.
Hypothesis nb_col_BD : ~~ colinear B D.
Hypothesis eq_AE_CE : intersect_line_line A C B D = Some E.

Hypothesis angle_ABC_90 : angle A B C = PI / 2.
Hypothesis angle_BAC_40 : angle B A C = (40%:R * PI) / 180.

Theorem measure_angle_DEB_80 :
  angle D E B = (80%:R * PI) / 180.
Proof. Admitted.

End Rectangle_Angle_DEB.
####