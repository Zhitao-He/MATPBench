####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglereal geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section geometry_problem.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Hypothesis AB_BC_eq : \norm (B - A) = \norm (C - B).
Hypothesis BC_CD_eq : \norm (C - B) = \norm (D - C).
Hypothesis CD_CE_eq : \norm (D - C) = \norm (E - C).
Hypothesis C_on_BD : colinearR B D C.
Hypothesis C_on_AE : colinearR A E C.
Hypothesis angleA_52_5 : angleR B A E = (5/2) * angleR A B C.

Theorem angleD_52_5 :
  angleR C D E = 52.5%:R.
Proof. Admitted.

End geometry_problem.
####