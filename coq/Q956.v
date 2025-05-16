####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.
Implicit Types (p : 'rV[R]_2).

Variables O P A B C D E F G : 'rV[R]_2.
Variables rO rP : R.

Hypotheses
  (HO : circle O rO)
  (HP : circle P rP)
  (Hradii : rO <> rP)
  (HABO : on_circle O rO A)
  (HABO2 : on_circle O rO B)
  (HABP : on_circle P rP A)
  (HABP2 : on_circle P rP B)
  (HAneqB : A <> B)
  (HCD : colinear C A D)
  (HCAonO : on_circle O rO C)
  (HDAonP : on_circle P rP D)
  (HCneqA : C <> A)
  (HDneqA : D <> A)
  (HCB_ext_P : F <> B /\ on_line (line_through C B) F /\ on_circle P rP F /\ F <> B /\ F <> C)
  (HDB_ext_O : E <> B /\ on_line (line_through D B) E /\ on_circle O rO E /\ E <> B /\ E <> D)
  (HCDnotperp : ~ perpendicular (line_through C D) (line_through A B)) (* So perpendicular exists *)
  (HAG_perp_CD : perpendicular (line_through A G) (line_through C D))
  (HEF_midperp_G : on_line (perpendicular_bisector E F) G).

Theorem geometry_circles_power_of_point :
  (dist A G)^2 = (dist E G)^2 + (dist A C) * (dist A D).
Proof. Admitted.

End geometry_problem.
####