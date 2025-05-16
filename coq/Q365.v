####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points Q, R, S are collinear in that order, R between Q and S *)
Variables Q R S P : 'rV[R]_2.

Hypothesis collinear_QRS : colinear Q R S.
Hypothesis between_QRS : between Q R S.

Hypothesis QR_eq_8 : dist Q R = 8.
Hypothesis PR_eq_12 : dist P R = 12.

Hypothesis angle_PRQ_120 : angle_at R P Q = (2 * PI / 3).
Hypothesis angle_RPS_90 : angle_at P R S = (PI / 2).

Theorem area_triangle_QPS_96sqrt3 :
  let area := 'S[Q;P;S] in
  area = 96 * sqrt 3.
Proof. Admitted.
####