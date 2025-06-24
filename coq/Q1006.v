####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry.

Variable R : realType.
Variable plane : PointType R.

Variables A B C : plane.
Hypothesis noncollinear_ABC : ~ colinear A B C.

(* Altitudes: D from A, E from B, F from C *)
Variable D : plane.
Hypothesis D_on_BC : on_line D (Line B C).
Hypothesis AD_perp_BC : perpendicular (Line A D) (Line B C).

Variable E : plane.
Hypothesis E_on_AC : on_line E (Line A C).
Hypothesis BE_perp_AC : perpendicular (Line B E) (Line A C).

Variable F : plane.
Hypothesis F_on_AB : on_line F (Line A B).
Hypothesis CF_perp_AB : perpendicular (Line C F) (Line A B).

(* Orthocenter H *)
Variable H : plane.
Hypothesis H_on_AD : on_line H (Line A D).
Hypothesis H_on_BE : on_line H (Line B E).
Hypothesis H_on_CF : on_line H (Line C F).

(* Circumcenter O *)
Variable O : plane.
Hypothesis O_is_circumcenter :
  is_circumcenter O A B C.

(* Construct M: intersection of ED and AB *)
Variable M : plane.
Hypothesis M_on_AB : on_line M (Line A B).
Hypothesis M_on_ED : on_line M (Line E D).

(* Construct N: intersection of FD and AC *)
Variable N : plane.
Hypothesis N_on_AC : on_line N (Line A C).
Hypothesis N_on_FD : on_line N (Line F D).

Theorem triangle_OH_perp_MN :
  perpendicular (Line O H) (Line M N).
Proof. Admitted.

End Geometry.
####