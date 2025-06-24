####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

(* Points *)
Variables A B C O H E F K G D : 'rV[R]_2.

Hypotheses
  (* ABC is inscribed in circle O *)
  (circO : circle O C)
  (A_on_O : on_circle O C A)
  (B_on_O : on_circle O C B)
  (C_on_O : on_circle O C C)
  (* AC ≠ BC (as given in the problem) *)
  (AC_neq_BC : dist A C <> dist B C)
  (* CH is angle bisector of angle ACB and passes through H on O *)
  (H_on_O : on_circle O C H)
  (CH_ang_bis : angle_bisector C A B H)
  (H_on_CH : colinear C H (intersection (angle_bisector_line C A B) (circle_set O C)))
  (* E on AC, F on BC *)
  (E_on_AC : on_line A C E)
  (F_on_BC : on_line B C F)
  (* EF ∥ AB *)
  (EF_parallel_AB : parallel (Line E F) (Line A B))
  (* EF ∩ CH = K *)
  (K_on_CH : on_line C H K)
  (K_on_EF : on_line E F K)
  (* P is the circumcircle of triangle EFH *)
  (circP : circle P E)
  (H_on_P : on_circle P E H)
  (F_on_P : on_circle P E F)
  (E_on_P : on_circle P E E)
  (* The circumcircle P of triangle EFH meets O again at G *)
  (G_on_O : on_circle O C G)
  (G_on_P : on_circle P E G)
  (G_neq_H : G <> H)
  (* The line GK meets O again at D *)
  (D_on_O : on_circle O C D)
  (D_on_GK : on_line G K D)
  (D_neq_G : D <> G)
  (D_neq_K : D <> K)
.

Theorem geometry_CK_parallel_AB :
  parallel (Line C D) (Line A B).
Proof. Admitted.
####