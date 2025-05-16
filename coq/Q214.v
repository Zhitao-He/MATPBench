####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables R_pt S_pt T_pt V_pt : 'rV[R]_2.

Hypotheses
  RS_dist : R_pt != S_pt /
  ST_dist : S_pt != T_pt /
  TV_dist : T_pt != V_pt /
  SV_dist : S_pt != V_pt /
  angle_S_right : angle (R_pt - S_pt) (V_pt - S_pt) = PI/2 /
  angle_V_right : angle (T_pt - V_pt) (S_pt - V_pt) = PI/2 /
  angle_V_RS_78 : angle (S_pt - V_pt) (R_pt - V_pt) = 78%:R * PI / 180.

Hypotheses
  RS_len : `|R_pt - S_pt| = 2 * y - 1 /
  ST_len : `|S_pt - T_pt| = 4.

Theorem compute_TV_length : `|T_pt - V_pt| = 5.
Proof.
admit.
Qed.
####