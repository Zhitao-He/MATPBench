####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AcuteTriangleAngles.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C E F M K S T : point.

Hypothesis ABC_acute : is_acute_triangle A B C.
Hypothesis E_on_AC : on_line E (line_through A C).
Hypothesis F_on_AB : on_line F (line_through A B).
Hypothesis M_midpoint : M = midpoint E F.

(* Perpendicular bisector of EF meets BC at K *)
Hypothesis K_on_BC : on_line K (line_through B C).
Hypothesis K_on_perp_bis_EF : is_perpendicular_bisector K E F.

(* Perpendicular bisector of MK meets AC at S and AB at T *)
Hypothesis S_on_AC : on_line S (line_through A C).
Hypothesis T_on_AB : on_line T (line_through A B).
Hypothesis ST_perp_bis_MK : is_perpendicular_bisector S T M K.

(* Concyclic condition *)
Hypothesis K_S_A_T_concyclic : concyclic K S A T.

Theorem angle_equalities : angle K E F = angle K F E /\ angle K E F = angle B A C.
Proof. Admitted.

End AcuteTriangleAngles.
####