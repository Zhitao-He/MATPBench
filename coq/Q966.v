####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Parallelogram_Theorem.

Variable R : realType.
Variable plane : PointType R.

Variables A B C D E F G : plane.

Hypothesis parallelogram_ABCD : parallelogram A B C D.

(* E is the foot of the perpendicular from C to AB *)
Hypothesis E_on_AB : collinear A B E.
Hypothesis CE_perp_AB : perpendicular (Line C E) (Line A B).

(* F is the foot of the perpendicular from C to AD *)
Hypothesis F_on_AD : collinear A D F.
Hypothesis CF_perp_AD : perpendicular (Line C F) (Line A D).

(* G = EF ∩ BD *)
Hypothesis G_on_EF : collinear E F G.
Hypothesis G_on_BD : collinear B D G.

Theorem parallelogram_gc_perp_ac :
  perpendicular (Line G C) (Line A C).
Proof. Admitted.

End Parallelogram_Theorem.
####