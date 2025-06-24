####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section PerpendicularBisectorsTriangle.

Variable R : realType.

Variables P Q R_pt T : 'rV[R]_2.
Variables x y : R.
Definition z := 3%:R.
Variables l m n : {line R^o_2}.

Hypotheses
  (Hl : is_perpendicular_bisector l P Q R_pt) (* Line l is the perpendicular bisector of segment PQ in triangle PQR *)
  (Hm : is_perpendicular_bisector m Q R_pt P) (* Line m is the perpendicular bisector of segment QR in triangle PQR *)
  (Hn : is_perpendicular_bisector n R_pt P Q) (* Line n is the perpendicular bisector of segment RP in triangle PQR *)
  (HTQ : `|T - Q| = 2 * x) (* Length of segment TQ is 2x *)
  (HPT : `|P - T| = 3 * y - 1) (* Length of segment PT is 3y - 1 *)
  (HTR : `|T - R_pt| = 8) (* Length of segment TR is 8 *)
  (Hz : z = 3). (* z is defined as 3 *)

Theorem perpendicular_bisector_lengths :
  4 * x + 3 * y = 8.
Proof. Admitted.

End PerpendicularBisectorsTriangle.
####