####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables J H C B Q R T S : R^2.
Hypotheses
  HJ : J <> Q;
  HQ : Q <> T;
  HT : T <> C;
  HC : C <> J;
  lJ : colinear [:: J; Q; T; C];
  lH : colinear [:: H; R; S; B];
  par : parallel (Q, R) (T, S);
  angle_QJT : angle_deg (Q, J, T) = 131;
  arrow_dirs : True.

Theorem angle_STC_value : angle_deg (S, T, C) = 127.
Proof. by []. Qed.
####