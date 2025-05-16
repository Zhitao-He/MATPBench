####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section angle_problem.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypotheses
 (Hnoncol_ACB : ~~ colinear A C B)
 (Hnoncol_CDE : ~~ colinear C D E)
 (Hnoncol_EBD : ~~ colinear E B D)
 (HAEC : angle C A E = 95%:R)
 (HECB : angle B C A = 33%:R)
 (HEDB : angle B D E = 109%:R)
 (HEBC : angle C B D = 24%:R).

Theorem measure_of_angle_EBD :
  angle B E D = 14%:R.
Proof. Admitted.

End angle_problem.
####