####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle trig.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables R Q M N P : 'rV[R]_2.
Hypotheses
  distinct_pts : uniq [:: R; Q; M; N; P];
  rqm_triangle : ~~ colinear [:: R; Q; M];
  q_between : between Q R M;
  hPQ : norm (P - Q) = 11.1;
  hQN : norm (Q - N) = 15.4;
  hMN : norm (M - N) = 3*x - 4;
  hRM : norm (R - M) = 17.9;
  hRP : norm (R - P) = 20;
  hRQ : norm (R - Q) = 3*z - 3;
  hPN : norm (P - N) = 2*y + 5;
  angle1 : angle_deg (R,Q,M) = 83;
  angle2 : angle_deg (R,M,N) = 33;
  angle3 : angle_deg (Q,R,M) = 64.
Theorem solve_xyz : x = 7 /\y = 4 /\z = 9.
Proof. by []. Qed.
####