####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geometry_Theorem.

Variable R : realType.
Implicit Types A B C E F M K S T : 'rV[R]_2.

Hypothesis triangle_ABC : forall A B C : 'rV[R]_2,
  & (A != B) /\ (B != C) /\ (C != A) /\
  triangle_acute A B C.

(* Points E and F on AC and AB respectively *)
Variables A B C : 'rV[R]_2.
Hypothesis ABC_triangle : triangle_acute A B C.

Variable E : 'rV[R]_2.
Hypothesis E_on_AC : on_line E (Line A C).

Variable F : 'rV[R]_2.
Hypothesis F_on_AB : on_line F (Line A B).

Hypothesis E_neq_A : E != A.
Hypothesis E_neq_C : E != C.
Hypothesis F_neq_A : F != A.
Hypothesis F_neq_B : F != B.

(* M is the midpoint of EF *)
Definition M : 'rV[R]_2 := midpoint E F.

(* K: The perpendicular bisector of EF meets BC at K *)
Definition perp_bis_EF : Line R := perpendicular_bisector E F.
Variable K : 'rV[R]_2.
Hypothesis K_on_BC : on_line K (Line B C).
Hypothesis K_on_perp_bis_EF : on_line K perp_bis_EF.

(* S and T: Perpendicular bisector of MK meets AC at S and AB at T *)
Definition perp_bis_MK : Line R := perpendicular_bisector M K.
Variable S : 'rV[R]_2.
Variable T : 'rV[R]_2.
Hypothesis S_on_AC : on_line S (Line A C).
Hypothesis S_on_perp_bis_MK : on_line S perp_bis_MK.
Hypothesis T_on_AB : on_line T (Line A B).
Hypothesis T_on_perp_bis_MK : on_line T perp_bis_MK.

(* K, S, A, T are concyclic *)
Hypothesis K_S_A_T_cocyclic : is_cyclic [:: K; S; A; T ].

Theorem putnam_geometry_acute_triangle_angles :
  angle K E F = angle K F E /\ angle K E F = angle B A C.
Proof. Admitted.

End Putnam_Geometry_Theorem.
####