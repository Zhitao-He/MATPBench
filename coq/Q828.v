####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import real_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables B C D E F H I J K : 'Point[R]_2.
Hypotheses
  l1 : collinear [:: B; C; D];
  l2 : colinear [:: F; E; H];
  hI : I = C;
  hE : E = K;
  on_ray_CJ : onray C J;
  on_ray_EK : onray E K;
  angle1 : angle_deg (B,C,J) = 105;
  angle2 : angle_deg (F,E,K) = 125;
  parallelism : parallel (line B D) (line F H).
Definition x := angle_deg (J,I,K).
Theorem compute_x : x = 130.
Proof. by []. Qed.
End AngleProblem.
####