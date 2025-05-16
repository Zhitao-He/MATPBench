####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry2D.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleBisectorConstruction.

Variable R : realType.
Let point := 'rV[R]_2.

Variables (A B C : point).

Hypothesis A_neq_B : A != B.
Hypothesis B_neq_C : B != C.
Hypothesis C_neq_A : C != A.
Hypothesis non_collinear_ABC : ~ collinear A B C.

(* D is the point on BC such that AD bisects angle BAC *)
Variable D : point.
Hypothesis D_on_BC : on_line D B C.
Hypothesis D_on_AD : on_line D A D.
Hypothesis AD_angle_bisects_BAC : angle_bisector A D B C.

(* E is on AB, and DE bisects angle ADB *)
Variable E : point.
Hypothesis E_on_AB : on_line E A B.
Hypothesis E_on_DE : on_line E D E.
Hypothesis DE_angle_bisects_ADB : angle_bisector D E A B.

(* F is on AC, and DF bisects angle ADC *)
Variable F : point.
Hypothesis F_on_AC : on_line F A C.
Hypothesis F_on_DF : on_line F D F.
Hypothesis DF_angle_bisects_ADC : angle_bisector D F A C.

(* G is intersection of EF and AD *)
Variable G : point.
Hypothesis G_on_EF : on_line G E F.
Hypothesis G_on_AD : on_line G A D.

(* M is intersection of BG and DF *)
Variable M : point.
Hypothesis M_on_BG : on_line M B G.
Hypothesis M_on_DF : on_line M D F.

(* N is intersection of CG and DE *)
Variable N : point.
Hypothesis N_on_CG : on_line N C G.
Hypothesis N_on_DE : on_line N D E.

Theorem geometry_AngleBisectors_collinearity_perpendicularity :
    collinear M A N / perpendicular (M - N)%R (D - A)%R.
Proof. Admitted.

End AngleBisectorConstruction.
####