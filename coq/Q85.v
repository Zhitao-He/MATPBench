####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleSixPartitions.

Variable R : realType.

Variables A B C P : 'rV[R]_2.

Hypothesis P_interior : inside_triangle P A B C.

(* Points X, Y, Z on sides BC, CA, AB so that AP, BP, CP meet at P, dividing ABC into six regions *)
Variables X Y Z : 'rV[R]_2.
Hypothesis X_on_BC : on_line X B C.
Hypothesis Y_on_CA : on_line Y C A.
Hypothesis Z_on_AB : on_line Z A B.
Hypothesis AP_meets_BC_at_X : colinear A P X /\ between B X C.
Hypothesis BP_meets_CA_at_Y : colinear B P Y /\ between C Y A.
Hypothesis CP_meets_AB_at_Z : colinear C P Z /\ between A Z B.
Hypothesis P_is_intersection :
  (exists! Q : 'rV[R]_2, colinear A Q X /\ colinear B Q Y /\ colinear C Q Z /\ Q = P).

(* The six small triangles: ABP, BCP, CAP, and three more: ABZP, BCXP, CAYP *)
(* Notation: Areas below refer to the regions indicated in the
####