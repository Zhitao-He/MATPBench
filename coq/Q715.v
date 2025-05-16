####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^2 + (py A - py B)^2).

Variables R_pt S_pt T_pt L_pt W_pt : point.

Hypotheses
  (H_RL : dist R_pt L_pt = 3)
  (H_LW : dist L_pt W_pt = 8)
  (H_RW : dist R_pt W_pt = 6)
  (H_RLT : exists T1 : point, T1 = T_pt /\ dist L_pt T1 + dist T1 S_pt = dist L_pt S_pt)
  (H_quadrilateral : True).

Theorem length_WS_is_10 :
  dist W_pt S_pt = 10.
Proof. Admitted.
####