####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope R_scope.

Section CylinderVolume.

Variable R : realType.
Variable pi : R.
Hypothesis pi_positive : 0 < pi.

Variables r h : R.
Hypothesis volume_cylinder : pi * r^2 * h = 45 * pi.
Hypothesis radius_given : r = 3.

Theorem cylinder_height : h = 5.
Proof. Admitted.

End CylinderVolume.
####