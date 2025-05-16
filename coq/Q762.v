####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleGAC.

Variable Point : Type.

Variables A B C D E F G : Point.

(* Hypotheses about collinearity and angles as indicated by the diagram *)
Hypothesis E_G_B_col : collinear E G B.
Hypothesis A_G_E_col : collinear A G E.
Hypothesis A_C_D_col : collinear A C D.
Hypothesis C_F_col : collinear C F.
Hypothesis A_C_B_noncol : ~ collinear A C B.

(* Hypothesis: C is between A and D *)
Hypothesis between_A_C_D : between A C D.

(* Hypothesis: G is intersection of AE and BG *)
Hypothesis intersection_G : exists ! P, collinear A E P /\ collinear B G P.

(* The measures of angles as shown *)
Hypothesis angle_EGC_100 : angle G E C = 100%:R.
Hypothesis angle_ACF_75 : angle A C F = 75%:R.

Theorem measure_angle_GAC :
  angle G A C = 25%:R.
Proof. Admitted.

End AngleGAC.
####