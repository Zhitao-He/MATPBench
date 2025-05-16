####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry.

Variable R : realType.

Variables R_pt S_pt U_pt V_pt T_pt : 'e2[R].

Hypotheses
  (Hcol_URT : colinear R_pt U_pt T_pt)
  (HSU_perp_UT : perpendicular (Line S_pt U_pt) (Line U_pt T_pt))
  (HV_perp_UT : perpendicular (Line V_pt T_pt) (Line U_pt T_pt))
  (HSV_perp_VT : perpendicular (Line S_pt V_pt) (Line V_pt T_pt))
  (HU_between_RT : between R_pt U_pt T_pt)
  (Hangle_VTU : angle_between (U_pt, T_pt, V_pt) = 47%:R).

Theorem measure_angle_USR_47 :
  angle_between (U_pt, S_pt, R_pt) = 47%:R.
Proof. Admitted.

End Geometry.
####