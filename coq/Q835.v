####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D E F : 'rV[R]_2.
Variables x y : R.
Hypotheses
  col_A_F : colinear [:: A; F]; col_B_F : colinear [:: B; F];
  col_C_F : colinear [:: C; F]; col_D_F : colinear [:: D; F];
  col_E_F : colinear [:: E; F];
  angle_EFA : angle_deg (E,F,A) = (12*y - 10)%:R;
  angle_AFB : angle_deg (A,F,B) = 90%:R;
  angle_BFC : angle_deg (B,F,C) = (6*x)%:R;
  angle_CFD : angle_deg (C,F,D) = (3*x)%:R;
  angle_DFE : angle_deg (D,F,E) = 90%:R.

Theorem solve_x : x = 10%:R.
Proof. Admitted.
####