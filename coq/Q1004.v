####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry conic.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AJ_eq_AK_theorem.

Variable R : realType.
Let Point := point R.
Let Circle := circle R.

Variables A B C : Point.

Hypothesis ABC_noncollinear : ~ colinear A B C.

(* Circumcircle ⊙O of △ABC *)
Variable O : Point.
Variable R_O : R.
Hypothesis circumcircleO : is_circumcircle O R_O A B C.

(* Incircle ⊙I of △ABC, tangent to BC, CA, AB at D, E, F respectively *)
Variable I : Point.
Variable rI : R.
Hypothesis incircleI : is_incircle I rI A B C.

(* Points D, E, F: Points of tangency of incircle with BC, CA, AB *)
Variables D E F : Point.
Hypothesis D_on_incircle_tangent_BC : is_intangent_point I rI B C D.
Hypothesis E_on_incircle_tangent_CA : is_intangent_point I rI C A E.
Hypothesis F_on_incircle_tangent_AB : is_intangent_point I rI A B F.

(* Circle ⊙P externally tangent to ⊙O at J, tangent to AB at G, AC at H *)
Variable P : Point.
Variable rP : R.
Variable J G H : Point.
Hypothesis circleP : circle P rP.
Hypothesis P_ext_tangent_O_at_J : are_circles_tangent_ext O R_O P rP J.
Hypothesis G_on_AB : incident G (line_through A B).
Hypothesis H_on_AC : incident H (line_through A C).
Hypothesis P_tangent_AB_at_G : is_tangent_at P rP G (line_through A B).
Hypothesis P_tangent_AC_at_H : is_tangent_at P rP H (line_through A C).

(* Line AD meets ⊙P again at K *)
Variable K : Point.
Hypothesis K_on_AD : incident K (line_through A D).
Hypothesis K_on_P : on_circle P rP K.
Hypothesis K_distinct_A : K <> A.
Hypothesis K_unique : forall M, incident M (line_through A D) -> on_circle P rP M -> M <> A -> M = K.

(* J is the external tangency point of ⊙O and ⊙P *)
Hypothesis J_on_O : on_circle O R_O J.
Hypothesis J_on_P : on_circle P rP J.

Theorem AJ_eq_AK :
  dist A J = dist A K.
Proof. Admitted.

End AJ_eq_AK_theorem.
####