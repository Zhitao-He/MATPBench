####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Length_PS_Theorem.

Variable R : realType.
Let point := 'rV[R]_2.

Variables P Q R : point.

(* Assume P, Q, R are non-collinear, forming triangle PQR *)
Hypothesis H_noncg : ~ colinear P Q R.

(* Let S be the point on segment [R,P] such that RS = 3 *)
Variable S : point.
Hypothesis S_on_RP : between R S P.
Hypothesis RS_len3 : dist R S = 3.

(* Let T be the point on segment [Q,P] such that QT = 3 *)
Variable T : point.
Hypothesis T_on_QP : between Q T P.
Hypothesis QT_len3 : dist Q T = 3.

(* Let S and T be such that line ST is parallel to QR *)
Hypothesis ST_parallel_QR : parallel (S,T) (Q,R).

Theorem length_PS_eq_8 : dist P S = 8.
Proof. Admitted.

End Length_PS_Theorem.
####