####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Angle_BHD_Theorem.

Variable R : realType.
Variable Point : Type.

Variables B C D H I : Point.

Hypothesis collinear_C_H_D : collinear R [:: C; H; D].
Hypothesis H_between_C_D : between R C H D.

Hypothesis angle_BCH_23 : angle R B C H = 23.
Hypothesis angle_CBI_32 : angle R C B I = 32.
Hypothesis angle_IDC_22 : angle R I D C = 22.

Theorem measure_angle_BHD_55 :
  angle R B H D = 55.
Proof. Admitted.

End Angle_BHD_Theorem.
####