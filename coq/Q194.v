####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D O : 'e2_ R.

Hypotheses
  (non_collinear_OAB : ~ collinear [:: O; A; B])
  (non_collinear_OAC : ~ collinear [:: O; A; C])
  (non_collinear_OBC : ~ collinear [:: O; B; C])
  (angle_AOB_30 : angle O A B = 30%:R)
  (angle_BOC_100 : angle O B C = 100%:R)
  (D_on_AB : on_line D (Line A B)).

Theorem angle_DOB_45 :
  angle O D B = 45%:R.
Proof. Admitted.
####