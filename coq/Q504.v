####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section angle_bisector_theorem.

Variable R : realType.

Variables A C D E G : 'e2d[R].
Variable x : R.

Hypotheses
  (angleACD : angle A C D = x)           (* ∠ACD = x° *)
  (angleECA : angle E C A = 2 * x)       (* ∠ECA = 2x° *)
  (angleGCE : angle G C E = x)           (* ∠GCE = x° *)
  .

Theorem value_of_x :
  x = 45.
Proof. Admitted.
####