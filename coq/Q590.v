####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D : Point R.

Hypotheses
  (h_dist_AB : dist A B = 25)
  (h_dist_AC : dist A C = 5 * sqrt 26)
  (h_dist_CB : dist C B = sqrt 26)
  (h_dist_CD : dist C D = 5)
  (h_dist_DB : dist D B = 5)
  (h_angle_CDB : right_angle C D B)
  (h_collinear_ABD : collinear A B D).

Theorem value_cos_measure_angle_CAD :
  cos (angle C A D) = (5 * sqrt 26) / 26.
Proof. Admitted.
####