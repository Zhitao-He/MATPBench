####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.
Variable plane : Type.
Variable Point : Type.

Variables A B C D F G : Point.

Hypothesis collinear_DFGA : collinear [:: D; F; G; A].
Hypothesis collinear_GC : collinear [:: G; C].
Hypothesis perpendicular_FG_GA : perpendicular (F,G) (G,A).
Hypothesis perpendicular_FG_FD : perpendicular (F,G) (F,D).
Hypothesis perpendicular_BC_BA : perpendicular (B,C) (B,A).
Hypothesis perpendicular_BG_BC : perpendicular (B,G) (B,C).
Hypothesis angle_DGF_53 : angle_deg D G F = 53.
Hypothesis angle_FGC_40 : angle_deg F G C = 40.
Hypothesis right_angle_F : right_angle F G A.
Hypothesis right_angle_B : right_angle B G C.

Theorem value_measure_angle_FDG :
  angle_deg F D G = 37.
Proof. Admitted.

End GeometryProblem.
####